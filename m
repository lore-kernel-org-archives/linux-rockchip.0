Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B6AEC636C4
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Feb 2026 22:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tum0dMv+gi38daaCegxguxtkRHGBtZrCfUnPFPMIVvc=; b=FJuuOUqwYjYoe+
	3Gy/XS8+OqkRTX1lmQFLPDgFKmVNeEj/asE12TRcpcOlbwlIem4Uzgp7NV3Uv9vp/J0MMWcqycAqT
	tXdx7S2RsfaRlwZPTaQ8oXGmPwAljUIYKYwJea5xohphoi3aRNEe6sdLEPEDzXbuLTsHbPwAwi152
	oI9nRUaCffn2iIBovsi5PzmiiwIRi0ytTfFvGrXlBweGmyhphqPIB8IHcpWg2E1wvu1+SnAYvjohO
	fJc3/fh1lEiitZFJxt5/0o0LRdhse5JstC/KUrNqX8XiAcK0t0nGZ0gtHihPPBlEn2B70FaiuSusQ
	HrB1z85s6iPykhCfx8KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuI7P-0000000H0La-0zRA;
	Sun, 22 Feb 2026 22:40:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuI6z-0000000H00x-2A5r
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Feb 2026 22:39:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=74ZaTUP5qG6W8OUdgQl8AgO5Ccb+9y+KTgRijaITDSo=; b=W8zRrquEL2DojQAOFuf/txJDh1
	vazxPlRWJLJ5r/58xCnWP2mxm2Tm2vTHn7VSx/WuThpa5CBpRrWJGwKSJ1mLxySD+NJ4fIDBCfuQA
	P68XMUIjTeAOqaKFsp3zyUs99XlrU/jCxFYvJUGiFmPzItt0DQHqZ5OXUFQVNpyeM5rbgsclwX9nr
	4HGK5NgmJohKO0yyAYunfMVo/YDd5+5cwxZ1j5YprcQ15xB1GMwOs1IYPMlr1MSenFPuLU8sSQmxR
	RjQiefbU4+W37/V4PfY7Qinp8BcurjbcsdL8s7cWp6BEFqJ7Uv636UwkVumduwgIkZHNzxTdBfiIY
	LdRXtHzA==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-sound@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	wangweidong.a@awinic.com,
	tiwai@suse.com,
	perex@perex.cz,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	linux-rockchip@lists.infradead.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH V2 0/3] Anbernic RG-DS AW87391 Speaker Amps
Date: Sun, 22 Feb 2026 23:39:07 +0100
Message-ID: <177179992300.1861430.15901525661724129930.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260128174608.1498-1-macroalpha82@gmail.com>
References: <20260128174608.1498-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260222_143937_574481_5DC4CE52 
X-CRM114-Status: GOOD (  13.38  )
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


On Wed, 28 Jan 2026 11:46:05 -0600, Chris Morgan wrote:
> Add support for the Anbernic RG-DS Speaker Amplifiers. The Anbernic
> RG-DS uses two AW87391 ICs at 0x58 and 0x5B on i2c2. However, the
> manufacturer did not provide a firmware file, only a sequence of
> register writes to each device to enable and disable them.
> 
> Add support for this *specific* configuration in the AW87390 driver.
> Since we are relying on a device specific sequence I am using a
> device specific compatible string. This driver does not currently
> support the aw87391 for any other device as I have none to test
> with valid firmware. Attempts to create firmware with the AwinicSCPv4
> have not been successful.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: add Awinic aw87391 for Anbernic RG-DS
      commit: 1ee69b9cdcd1b838e514520fb4103ca77acd068a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
