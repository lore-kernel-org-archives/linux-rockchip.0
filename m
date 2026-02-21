Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 618A5C61DE2
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Feb 2026 13:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Cc:Message-Id:Date:
	Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h3KWBv427Bb8SkI9f/qcinymGGTi8LYDzWCUAjc9cw0=; b=2xq3AGrxc9Ik9J
	nzAaxIZ1NERIDqbdjS4yxkzjlGu0HVt+zVBeQt9UlZQ92+GnEyyW47lfQd9lbF32+xt/+8kwUaEHP
	KJeGcoRAvYfVi8vAQ9V9VUgB9iyZYdz+W8CN+Ob0xveq6hY6a4MRDp9vz4zKmIgQWLqH/PQHnVgAL
	rh5ZFY/SVh/RLbctnLxdFkvUncJEXw+M/d8jmAT5E3FY0aWyOn28dppBcYB1wVieyT3v/pKqOmERg
	tdkqNqI6dQlXl8uaGzJjBAZrcawwha3l1tpkdegwn+dPQJjfNP8r2IfQny9B3ru5K69IZaU8oAaoD
	1ML+2NPZU4VIUzinKFwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtn2d-0000000G4A4-12vi;
	Sat, 21 Feb 2026 13:29:03 +0000
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtn2Z-0000000G49C-1kKW;
	Sat, 21 Feb 2026 13:29:01 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.stl.internal (Postfix) with ESMTP id 52CE31D00162;
	Sat, 21 Feb 2026 08:28:55 -0500 (EST)
Received: from phl-imap-11 ([10.202.2.101])
  by phl-compute-03.internal (MEProxy); Sat, 21 Feb 2026 08:28:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arthurfabre.com;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:message-id:mime-version
	:reply-to:subject:subject:to:to; s=fm2; t=1771680535; x=
	1771766935; bh=BBj1XSAnS+Z287mBk9hbl2WDrmiTfMoFaCX9+RKfTME=; b=c
	bX17CU2Fq4MMMz6yVtFS4sMExbYG6qsU4Mb63Tqk8r3OtQW+DSGSL0gdMcATWU58
	TjD2vz8+a+xDsomIajF/XPLGHygmwDS5O3A7djjmzeyPwqxTQvW/ttpIjM2IrMhi
	6Ux/ZeVtmBwIzgK4fNoDPEmTaTM5vSo0SwVw/4Vw+PsX6N+hdeZ9vXgTCHH2nfsE
	+epkpxXbfIX9OxREqyjM+J7vEw5/sGVFCJOYBLPRKRuOY/FNTM/iyI2xHNC6yFVo
	ZYA8NXxD+OYB4qUuEl2XtpZyZD4z79vhzpasigmyf+Jnfu6BHE6ZE6vkFtGrQ5jW
	/0U0Cwdm3cfztQNMn8H1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1771680535; x=1771766935; bh=BBj1XSAnS+Z287mBk9hbl2WDrmiT
	fMoFaCX9+RKfTME=; b=blicYLlY20c9/9UW+KoKBA3KdTmPV0h3QIM1PM0n0bDB
	QqgSQzOxNaaDEn1Uk6j2gV3yO3a5FwkdxoubzlRaf5aGshjkeRc3rjR8la6KQ2+Q
	/wApRtpW2g6Nv+kpTWYbdj5Ale7FOtj3Fcu2cgHSFPoKzyBf5kmnZSTg3cUWROf/
	dISAxyOhb4Ve3NQqPBDB8V1MXI7OtJw7TfhyKRgO3nKCeLdjNusl0LnalU+TGxyE
	RaLAnJuWqF4yvm9g/G5kVP4eIYA66Idtiaqm+htndTjobPosOypT7a/ppdXpXm40
	Xh9Vt6hEmYDUnyZy4OmYJRImnlKrkx8/B0RPOiZdWA==
X-ME-Sender: <xms:FbOZaWmc2ZBZNZWHbFdApIsvGbX9Kdr1hXUuvaPinmmBk_aJWz7qMA>
    <xme:FbOZaYrCiEmHc3FR5LqvqICgIqPlx-5IpIxxV3KjSqACj8AFNbBHqi4AfbfWluwZH
    83-GZVMX_bJ8jpIzRTaz5ama8wUMd7Wa8VSNQmVm8vWGo4UqJuxjng>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvfedugeekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepofgggfgtfffkvefuhffvofesthhqredtredtjeenucfhrhhomhepfdetrhhthhhu
    rhcuhfgrsghrvgdfuceorghrthhhuhhrsegrrhhthhhurhhfrggsrhgvrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeekhfegieegkeetuedvveefledvieeiheffkeethffffffgiedv
    gefhveehieeileenucffohhmrghinhepghhithhhuhgsrdgtohhmnecuvehluhhsthgvrh
    fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghrthhhuhhrsegrrhhthhhu
    rhhfrggsrhgvrdgtohhmpdhnsggprhgtphhtthhopeejpdhmohguvgepshhmthhpohhuth
    dprhgtphhtthhopegrmhgruggvuhhssehjmhhurdgvughurdgtnhdprhgtphhtthhopehl
    ihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggrugdrohhrgh
    dprhgtphhtthhopehlihhnuhigqdhphhihsehlihhsthhsrdhinhhfrhgruggvrggurdho
    rhhgpdhrtghpthhtoheplhhinhhugidqrhhotghktghhihhpsehlihhsthhsrdhinhhfrh
    gruggvrggurdhorhhgpdhrtghpthhtohepnhgrohhkihesrhgrugigrgdrtghomhdprhgt
    phhtthhopehhvghikhhosehsnhhtvggthhdruggvpdhrtghpthhtoheplhhinhhugidqkh
    gvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:FrOZabEf3Y8Chhc961V8imLlFRymBtEZI6K2qSsYBAlHZ3WLnwsdmA>
    <xmx:FrOZaUWCg4FHHhOjqpL5oFRCEtvwU5vprqXxh3sSyeZQLzasOiJ3zw>
    <xmx:FrOZafXFZ7x8QPGqRYALU0DxbLCGfCWHmB06us3nQAQ97FKZmjeRcQ>
    <xmx:FrOZaaJHmZrJeMaK_T8IRnnBnxtnI0Ub2hBpbSbbU1JlRDo1xPMCoQ>
    <xmx:F7OZaYGREhgpY864gTO7ucFrD0AvrSIxc47ITD6fWdWyxJUlOXtW8Eq8>
Feedback-ID: i25f1493c:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id DB51A1B4006F; Sat, 21 Feb 2026 08:28:53 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
Mime-Version: 1.0
Date: Sat, 21 Feb 2026 14:28:53 +0100
Message-Id: <DGKOC0Y8UWRH.3TVFOP2ND9W9J@arthurfabre.com>
Cc: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "FUKAUMI Naoki" <naoki@radxa.com>
Subject: PROBLEM: Raxda Rock 5 ITX shared SATA broken by "phy: rockchip:
 naneng-combphy: fix phy reset"
From: "Arthur Fabre" <arthur@arthurfabre.com>
To: "Heiko Stuebner" <heiko@sntech.de>, "Chukun Pan" <amadeus@jmu.edu.cn>
X-Mailer: aerc 0.21.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260221_052859_991973_9B34CA42 
X-CRM114-Status: UNSURE (   4.76  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello,

I have a Raxda Rock 5 ITX, with a device-tree overlay to enable
the shared SATA port:

// ROCK 5 ITX M.2 E-Key Sata
/dts-v1/;
/plugin/;

/ {
	fragment@0 {
		target = <&pcie2x1l0>;

		__overlay__ {
			status = "disabled";
		};
	};

	fragment@1 {
		target = <&sata1>;

		__overlay__ {
			status = "okay";
		};
	};
};

This worked fine, with the kernel normally logging:

[    0.754425] ata1: SATA max UDMA/133 abar m8192@0xf1282000 port 0xf1282100 irq 70 lpm-pol 0
[    1.692424] ata1: SATA link up 6.0 Gbps (SStatus 133 SControl 300)

However this stopped working after a kernel update:

[    2.687755] ata1: SATA max UDMA/133 mmio [mem 0xfe220000-0xfe220fff] port 0x100 irq 79 lpm-pol 0
[    4.893204] ata1: SATA link down (SStatus 1 SControl 300)
[    7.111503] ata1: SATA link down (SStatus 1 SControl 300)
[    7.111993] ata1: limiting SATA link speed to 1.5 Gbps

I've reliably bisected it to commit:
fbcbffbac994 "phy: rockchip: naneng-combphy: fix phy reset".

Unfortunately coming up with a patch is out of my depth.
Happy to test any suggestions.

If it matters I'm using the EDK2 UEFI firmware v1.1:
https://github.com/edk2-porting/edk2-rk3588

Thank you,

Arthur

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
