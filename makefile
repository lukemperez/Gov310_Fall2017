.PHONY: all assignments slides notes video_list
all: slides assignments notes video_list

test: *.md
	pandoc 2017_Perez_Gov310_Syllabus.md \
	--latex-engine=xelatex -s -S \
	-o test.pdf && open test.pdf

# assignments
# assignments: Assignments/CE0.pdf Assignments/CE1.pdf Assignments/CE2.pdf Assignments/CE4.pdf Assignments/CE5.pdf
#
# Assignments/%.pdf: Assignments/%.md
# 	pandoc $< -o $@
#
# # slides
# slides: Slides/1-Intro.pdf Slides/2-Democratic_Theory.pdf Slides/3-Federalism.pdf Slides/4-Constitution.pdf Slides/5-TX_Constitution.pdf Slides/6-Congress.pdf Slides/7-Executive.pdf Slides/8-Bureaucracy.pdf Slides/9-Courts.pdf Slides/10-Civil_RL.pdf Slides/11-Public_Opinion.pdf Slides/12-Participation.pdf Slides/13-IGs.pdf Slides/14-Parties.pdf Slides/15-Redistricting.pdf Slides/16-Campaigns.pdf Slides/17-2016.pdf Slides/18-Econ_Policy.pdf Slides/19-Social_Policy.pdf Slides/20-Foreign_Policy.pdf Slides/final_day.pdf
#
# Slides/%.pdf: Slides/%.md
# 	pandoc $< -t beamer --latex-engine xelatex -o $@
# 	cp $@ Course_Page/slides/$(@F)
#
# # slides with notes
# notes: Notes/1-Intro.pdf Notes/2-Democratic_Theory.pdf Notes/3-Federalism.pdf Notes/4-Constitution.pdf Notes/5-TX_Constitution.pdf Notes/6-Congress.pdf Notes/7-Executive.pdf Notes/8-Bureaucracy.pdf Notes/9-Courts.pdf Notes/10-Civil_RL.pdf Notes/11-Public_Opinion.pdf Notes/12-Participation.pdf Notes/13-IGs.pdf Notes/14-Parties.pdf Notes/15-Redistricting.pdf Notes/16-Campaigns.pdf Notes/17-2016.pdf Notes/18-Econ_Policy.pdf Notes/19-Social_Policy.pdf Notes/20-Foreign_Policy.pdf
#
# Notes/%.pdf: Slides/%.md
# 	pandoc $< -t beamer --latex-engine xelatex -H Slides/Templates/notes_header.tex -o $@
#
# video_list:
# 	ls -lh Videos > Videos/videos_list.txt
