#	�g�ݍ��킹�̍쐬�e�X�g

def comb(list, buff, max_r)
	temp = list.clone
	while 0<temp.size
		top = temp.shift
		buff.push(top)
		if 0==temp.size || max_r==buff.size
			p buff if max_r==buff.size
		else
			comb(temp, buff, max_r)
		end
		buff.pop
	end
end

list = ['a', 'b', 'c', 'd', 'e', 'f']
buff = Array.new
max_r = 3
comb(list, buff, max_r)

#���ۂ͊֐��ōςނ��ǁA�Ƃ肠��������Ă݂�
puts "--------"
p list.combination(3).to_a

