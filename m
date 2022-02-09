Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDEECC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 16:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPxxo99W4CQKQwvSGG6LTUT42e51Ee7j8CKLou2zW1c=; b=QszDUIghxHj/c+
	hCRYkaaeGeeCdu0cbSt6N+DfOQhsaKrh15A8QSNy0Htf4DCc5W+6bdUwpdFJMeXZ82YohVLUO0sdG
	L0q8NPDBpax+EIZdcgdmWNIf7r2splW9Thlall+h2xYjfs7Y5vQl3Dh5th4AwfE23OtkADRCrsT8s
	7l08JF1ezWhw0VuTtqEF/r/6C/k69a53cEx6w99Eu0oIiggY4fHrPL0NLH/mkIxrVpiJaFI6teaLL
	j6aJe1DBP0sFQBS855bi9G+EYLqQtE713/6VYfWWbUsx47uUQ7xm0bzn4OQjfB/u37ry7CTIa2AeB
	7pa/SeOR6hOZosOENztA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHq0U-000raM-Pj; Wed, 09 Feb 2022 16:39:50 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHq0R-000rYH-Ov; Wed, 09 Feb 2022 16:39:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644424761;
 bh=23VcDO1UBkUQfDfSRRv997yJv60exeA4uC8n5A+TDxE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Lpz1wJHH+K9of3uaGCbGNXyz1urRUVQbH1pD53xTOmIjHuNtxxi8IIZcdciYSKIsX
 4MJc9P3mlZPyRhaqQiYfwl6/pp+R93QqZKT1doLmBQ9ciW+xsUC+joHGpoDQcmUtUa
 9IF7W8+xVXr8lvNaQscVYGh5MRCOjDBYZwMY9ZzU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.77.2] ([80.245.77.2]) by web-mail.gmx.net
 (3c-app-gmx-bs62.server.lan [172.19.170.146]) (via HTTP); Wed, 9 Feb 2022
 17:39:21 +0100
MIME-Version: 1.0
Message-ID: <trinity-15c80db0-29c1-4cea-be14-794d9a02debf-1644424761490@3c-app-gmx-bs62>
From: Frank Wunderlich <frank-w@public-files.de>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, jbx6244@gmail.com,
 devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de,
 cl@rock-chips.com, kever.yang@rock-chips.com, lee.jones@linaro.org,
 wulf@rock-chips.com, david.wu@rock-chips.com, Yifeng Zhao
 <yifeng.zhao@rock-chips.com>
Subject: Aw: [PATCH v8 0/4] Add Naneng combo PHY support for RK3568
Date: Wed, 9 Feb 2022 17:39:21 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:MM7Nx0+88CSi+CDhES/hxhcnP//1RXCCnodnqkxCyHMOIysSJnTzv+d82Mt13iCGAncX8
 DgZq7W20vZbLm3xrY7uJN7LjQMf7VkEYdBuxa068oT0hSc7uaWya6GHwx0FG0exoqY9wfgQIvdtz
 z/33dMmbL+E7IUjtCgMmZa1XUE7DeO1od88KOma67UbRir4X3wo24XXsrZ8wLyWJnt3cQlWVEEaT
 sp0T2QHcIVYTwUfv5qMBAaQky7saSPMPuCJfKHnqB/DtCt3D5DgGhBR4tU3I4IbQIfi/3CGRJZTN
 h8=
X-UI-Out-Filterresults: notjunk:1;V03:K0:peP6EjXS6tA=:oPaDBOwEnnaixYUZ5ZG4iW
 hIbhVRUzRZM6vZEA0ca3IykLJ2yzYM1jAHDgCcmJkP+/7Zn22hg1DqKibs9vkHgJwhLIJ3QYl
 KHh1rkMR/YzrtnPWLFof7S1U+ms0PlO9Hm6JjZUnZkJsnm15uaBOkwrQhCH9khSrl0BA8FOh3
 ILTJlcdnrEkYGjSigZ4wjRcaQAkh6eved6z1bqID5nAZgUIjkp1z/5NTveMPYshvMecSbYp/R
 XthpN2OOB//PFaD0AjvYNk8b7qG5bmUxAWyNUMenaR7ukwHQD0DmuBgPo67mkE/4qLzMUfIP4
 XCL5sxqvSE4Nem6huPvK9/A7ZHKBAPK7XhOCJy7v0k7DPPHJBZJnsL+f5acLwysPyQh0gAsfj
 sNzUWanufR8/4mpJ+fkfnNxsF070wThsKQyfUCQFWRZ5niSxAtPwMyAhJX154z9nBlol64dax
 i1OYh2cBrArUq30TClk2Uym/jcJSYVNu9h4Aa0ysB5Qt4TAs0kiOgUemWhMUsGPuF4HN1zvCZ
 xjceUAIAhlJRmoMLBEwePcmCa9az/jnEnFYG0IOqGhLVzJE+Sc1EJLLrhwnmcLYoowIZoz6dY
 yuoEXv+SqWYOliW5TRQwIx2CbX7pYO67oxKnJlchVkvsomVIzyG/L+iNl+v/uilT+G6mUhQDQ
 CmpjIWrh0zlPzEUJg55uu/TW4QVfvmL2T8gF0KtLNbVEcn8gnAp1FrnYcoLRwyPAWApJeuLln
 ZDorxOKy/KY/QMDjggxoygmrEG+4TzkR0V/lv0vmiJ0NsVbpvNUnzRvq1OsrUAcJCnZ3sqC0n
 HTxv+ei
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_083948_183156_D47A3BAE 
X-CRM114-Status: UNSURE (   4.32  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi

Tested complete series on rk3568 based Bananapi R2 Pro

combphy0: usb3 (usbdrd3_0)
combphy1: usb3 (usbdrd3_1)
combphy2: sata (sata2)

Tested-by: Frank Wunderlich <frank-w@public-files.de>

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
