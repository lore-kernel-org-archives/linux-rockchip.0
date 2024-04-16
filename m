Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CF73C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 19:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wkUOJ3XbZgAW9vqNk4nwCLtzlOugr47HMSjqhtHhAI=; b=YNO+rbGXujwn0y
	0Gxh5IEUXgpaHun6jLjsXea69vP1CX+uzO8UPxhooSjornHD2ZmK3Gg3+T62HIH688R+QhISHSDUD
	0l/F7Zy9nnEANe4mK9e9+lSjh/ZPdRWgFnJwe6lc2G/qHz3AxHMhlPqg+f9i+1oFo/qLjuwV+0xG9
	JfkaqoXdKOLKpEdi3DZF8D86KfSkqi2euiyuzk0mTCYAeHrbpVb+suo8VkquP9B/X64O5jfgCR6iP
	DyeM6ueNo8ZYKjbgRxuXMbGZuUcsjUhACQtWURsSi+gYMTqjiVa+XB5G9ApnMTP1xthicPZEpj1hS
	yAeHyW8QBkkD4+y2/J1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwo5G-0000000DSaf-3VM2;
	Tue, 16 Apr 2024 19:03:10 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwo5A-0000000DSVl-44YH;
	Tue, 16 Apr 2024 19:03:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8DA60CE0F1F;
	Tue, 16 Apr 2024 19:02:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B4D6C32781;
	Tue, 16 Apr 2024 19:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713294178;
	bh=ymLn4ViqJi6azNlarzfVSe+0BD6thD1UTD9JMNYrPbA=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=b5l/mDaJZMTRccDQU4oHPPsiNUGhNVjwt5i3LJfiFvJ1YIe4JWS7ccHxJbPQhP+rD
	 J/79Uqz96QG3JYUoyAjJZvKdAIF0seIEzlK3r6+96vq5miomFqbEdksH/nd1/CpvOJ
	 bDgSRndgM/MYoFTFba31wgTREhjmD7o4jIGezKSjI0jy+vBIz2dyDnTeQfqEnV5L78
	 Emztim/IwxeIc6VF0RCvge7DcLl83r7wC32fogZHYf1kQ3ut6pFZXEDTgbDFLdiOR8
	 JtjXsJAPJFlP67O/F7i0R2IofsZmbOuiCRiJRfybCPCu4TZE5MVxrCrZshifvqXqiP
	 ePxtnDOoJQDdA==
Date: Tue, 16 Apr 2024 21:02:54 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, linux-i2c@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/18] i2c: rk3x: remove printout on handled timeouts
Message-ID: <kxlb62ejtnaacgvlkdnyxtap23oesagq7p52z7kqhhydqdjhbt@gpvwnr4rb67a>
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <hgdhrf2jiovfxcppdtsq32sfbk4xuq7ewiwq4awwztj4mp3yez@kj6ixihkcxhe>
 <af8ac48f10a1636ab2486aef91e01c3f@manjaro.org>
 <8358604.T7Z3S40VBb@diego>
 <dnh4yiajjqcxcq7xjvj35quda7yrf7tubp2l2ktsaf4zgzai4n@xdefxkk76yyg>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dnh4yiajjqcxcq7xjvj35quda7yrf7tubp2l2ktsaf4zgzai4n@xdefxkk76yyg>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_120305_282108_93CCA125 
X-CRM114-Status: GOOD (  13.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Sat, Apr 13, 2024 at 04:35:06PM +0200, Wolfram Sang wrote:
> > Also we're talking about two lines of code, I wouldn't call that bloat ;-)
> 
> With this patch, yes. But once you allow debug code, it is hard to draw
> a line which debug is still okay and which is too fine-grained. And then
> you end up with a lot. Over the years, I developed the tendency to try
> to have less but meaningful error printouts. But I don't enforce it
> strictly because it is too much bike-shedding discussion.
> 
> In case of this error printout here, it is just wrong. But, see, it also
> came from this tendency I don't like to have printouts for every error.

I agree with Wolfram here. Debug messages are OK if they are
providing real useful information to a final product.

Besides, as I explained earlier, the patter:

	dev_dbg("timed out")
	return -ETIMEDOUT;

(print a debug but return error) doesn't make much sense.

But, I this is all personal preference. So that I can also leave
it to the specific maintainer.

From my side all patches in this series are r-b'ed, except for
patch 6 where there are 3 dev_dbg in a row stating the same
thing.

Thanks Dragan and Heiko for your feedback.

Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
