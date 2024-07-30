Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B850C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 10:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hlxzi3bnlaBxubUHdBbPb51VX+2jABJzgKuK8Mzoccg=; b=Qmc6FmoP2EJacO
	sJ2yDVXfHQu7ccEEDsLtr8s+AOHjoyJiEUPH+b4EdZIzel8TnB1HdbB7Nnxh3t/5SH60M6gcUl9ze
	WSSnq+bgPE4vAyTKWHAVBRDkW/Fms/6AjTj1YqvUzlzv5NT8h0n7vFCtI44zi32bsM9Lfj6wR+egv
	1vhgIFZGp3iWkHgC1Ndpcnyva6CUSGLBAZumq5xYv1CoK4c/q0IRWx4GnKiaDEePtz7yQXSSZ+nra
	C3RzAmgWiDpcNU3t/qMy9PxBQLYZs5H7OE/lGRX/9xJNOiRs/wY5aX/omtyY1DVYX7HJoDvHgR+Pp
	J5vvwSO3kCMSPukqWo1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYk38-0000000EiE7-19gX;
	Tue, 30 Jul 2024 10:25:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYk2h-0000000EiC5-4BF3;
	Tue, 30 Jul 2024 10:25:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=xINS1sxEhEb8/wio/243RoKaWhtQ2h9F9g0D3EW4nVA=; b=mK47SLOt0PTiP1MIhIIlnnDyaC
	a2ccItSniOKpODOS7j6+EHSO252CW+uBDgVy23mcSvshup9Q7Pa+XFI54qMAkHQMWYTvyoeSkcHJq
	b4nhCVvJ4msK1dbYu0IpPhukk8cXMk6ziFuJOvVdnsog5u+eyWqFuxVDnqzUEHi+WxZ1Q19AAuJln
	D0nANbPdCvcZvb7V1JE/2QI1msDHu3i09ZynfXHvZZR/OYNjgotVUsj47JyFkVrZ9uriq20d+zj23
	Ha/UfP25sFCqmIVcFXwnb2s/frF3HufaP9zxPJ9mEY4AzYfKOH2J6NxV3obSToV19tn11lrspziyM
	xiQ3/edw==;
Received: from m15.mail.163.com ([45.254.50.220])
	by desiato.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYk2c-00000004xnP-28i7;
	Tue, 30 Jul 2024 10:25:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=xINS1
	sxEhEb8/wio/243RoKaWhtQ2h9F9g0D3EW4nVA=; b=qQvYMIdOffngeLzvxQWTh
	HRbyD9HmOypMh9085jEiT2eqSQfxu8d+DtUmjhhFvStapHPTRP661nTprohqz3F1
	mKO8a2uvjj+cTmDEm1jawZQVg4BFTfHCmvo8m8XrDRVv3YuKs54MdxPgcOdsnVXO
	DJkfaPWxHg7v6ri9kWVn2A=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g0-3 (Coremail) with SMTP id _____wD3f_div6hmxPMCFA--.50877S2;
	Tue, 30 Jul 2024 18:24:38 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: dsimic@manjaro.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v3 0/2] Add support for Cool Pi GenBook
Date: Tue, 30 Jul 2024 18:24:31 +0800
Message-Id: <20240730102433.540260-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3f_div6hmxPMCFA--.50877S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7GF1kKFy8Xw13XF1ktryftFb_yoWkuFb_Ka
	17ZrZrJa1FqFnIvas3tayUJry3G39rCrnxGFWrZFs8ZF9xJ3y8G3WfJ3Wvv3W5Aay29r13
	Aa1FqF1rXrnxCjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sR_4So3UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwksXmXAm11sygAAsN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_112515_609495_FA63DAD9 
X-CRM114-Status: GOOD (  10.48  )
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

Cool Pi GenBook is a rk3588 based laptop, it is designed to consist of a
carrier board conntected with a CM5 SoM.

This series add support of eMMC/USB HOST/WiFi/Battery/TouchPad/Keyboard,
with a mainline based u-boot[0], it can boot a third-party distribution
such as Armbian on u-disk.

[0]https://github.com/andyshrk/u-boot/commit/8eedc6700367166bfa63b861d8e7aca486d315fe

Changes in v3:
- Wrap commit message by a maximum 75 chars per line
- Remove the superfluous blank line
- Use "coolpi,pi-cm5-genbook" instead of "coolpi,genbook"

Changes in v2:
- Descripte it as Cool Pi CM5 GenBook
- rename dts to rk3588-coolpi-cm5-genbook
- enable touchpad
- enable battery
- descripte it as CoolPi CM5 GenBook

Andy Yan (2):
  dt-bindings: arm: rockchip: Add Cool Pi CM5 GenBook
  arm64: dts: rockchip: Add support for rk3588 based Cool Pi CM5 GenBook

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-coolpi-cm5-genbook.dts    | 349 ++++++++++++++++++
 3 files changed, 357 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
