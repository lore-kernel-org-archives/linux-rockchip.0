Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12FB4C54FB9
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 15:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBWowXe4IF8IL5BKjxEtdVRP4dd9o80mJvyPfRfudes=; b=0E/zTl2BdninVd
	c8tUTOnyu4wfJAgwyGagfesCmxZ8a5ETHNMsWlUpALz20dUgvrTyXf9KDirPxjKbsYZe+nS5GZeAZ
	zQk7dGzRe8FgkWZyhA+IbYcTFmlxHhViiEt64eajKcyO5AWtK5qSKGdBVbBvHZ+vcy7O1bl1FzgTm
	CSdR3trHGOjULu6FlebuTLwAhn4rb8WDNznWbgPvMSoE3AecN52oSfd5rUJa+1pS9FE20j1E+Y8hw
	boJRuLL7A0EdmuP4jPDdQzBFd2KTCWq4ekV2P3b+lpG+k2t30rebvqgX8tfBDw3SwUvjmpr/4em+N
	hzR5UJOHmnPxS4IKX+ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3edd-003sB0-2d;
	Thu, 16 Nov 2023 15:50:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3eda-003s93-1L;
	Thu, 16 Nov 2023 15:50:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E166F61A43;
	Thu, 16 Nov 2023 15:50:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 496B0C43391;
	Thu, 16 Nov 2023 15:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700149837;
	bh=cxGMjfUMzjut3poH5+l7X0G21U7y7WehFTBdbs/Vgp0=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=cLpofF3mET3VoLMtKS3oDf4DKTbx+61luyKr9pdFoz6gDPobrcyMqZCtK9HV/78zi
	 FE8xkQgsMtAdScnw0fr03rb1OuC+I/SPmgzYgrcWl3vxynoj9hUsrQLrtEQ5fkToHo
	 lzEvLUN4Wvev86RyBnzz7cDJ0eYcSOPQlXUwFWvJayfa1fMN72hM3CRIWkI10cvDs2
	 bZX/25CvyfQlnGfOY9flhKG8RHJKWr+YLP1hun8cw3rE7CO8LE49YooIl0TV9/IJ/+
	 XFZ/KPGrYwEN2RC44wqlPUoybIFrfMTjq3aODw3RE70tM9XoQXqnabOC9lsG1HMdvD
	 B+mkjS3MxJ3cA==
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-5c194b111d6so730966a12.0;
        Thu, 16 Nov 2023 07:50:37 -0800 (PST)
X-Gm-Message-State: AOJu0YyTPGhAwJp0Vpd4jWGRDs/iJYVpo4Q8+hSWyxjaYOBlWP/JdmMz
	Y0Tnf96NCFWFcPjixixz33iJJbm/eCtj+XBh98A=
X-Google-Smtp-Source: AGHT+IHWOfeY/Ow8LM2aFdGyBtyRnKWUJ9qen9rlFQ50S/56218qxwI8feHkZCmpQd1uPgRUF1PAKXFv3BeCFKJDH7o=
X-Received: by 2002:a17:90b:4c0f:b0:280:235:19d with SMTP id
 na15-20020a17090b4c0f00b002800235019dmr15928923pjb.36.1700149836898; Thu, 16
 Nov 2023 07:50:36 -0800 (PST)
MIME-Version: 1.0
References: <20231116154816.70959-1-andrzej.p@collabora.com> <20231116154816.70959-3-andrzej.p@collabora.com>
In-Reply-To: <20231116154816.70959-3-andrzej.p@collabora.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 16 Nov 2023 23:50:26 +0800
X-Gmail-Original-Message-ID: <CAGb2v65BrPzctN_nxW-updoOvedLT4poQt_FL_S6Yyh61WQcZw@mail.gmail.com>
Message-ID: <CAGb2v65BrPzctN_nxW-updoOvedLT4poQt_FL_S6Yyh61WQcZw@mail.gmail.com>
Subject: Re: [RFC 2/6] media: verisilicon: Correct a typo in H1_REG_MAD_CTRL_MAD_THRESHOLD
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Hugues Fruchet <hugues.fruchet@foss.st.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Daniel Almeida <daniel.almeida@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_075038_500290_13A37E2A 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBOb3YgMTYsIDIwMjMgYXQgMTE6NDjigK9QTSBBbmRyemVqIFBpZXRyYXNpZXdpY3oK
PGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEl0J3MgYSBUSFJFU0hPTEQgYW5k
IG5vdCBhIFRIUkVESE9MRC4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2lj
eiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogQ2hlbi1ZdSBUc2FpIDx3
ZW5zQGNzaWUub3JnPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
