Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76F68CA0FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 06:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I9LFuYE/CNF90s3iPLNJpTqCCjFx4Hgp88Xm4XSmyNs=; b=q2H41/nmnfzdih
	oH4r/QIHDQevEFDjHn/yvLt1OoyoeoOEa6lTgh/i/EZkEQAM/7w4nD6cUSpWs6wMF7Qa+WVIutulU
	fLqNYGuxSFdDW30by2ASPgHlL2qyW/H5tQpQ5t/Z1gO2dP1O4TEgGza2Vzp62jndANJ5ZTlttqwHc
	2sHabJzeRw6loT9B47++zFuO7kwwytJlN6Awe4O0qq9pUbleGAQeOeZwaG813VAZTlDGk7IGdNvPc
	PJFc8reoEUP/hfDlxhA2Rhqz80l5Wkmgq4kZ2QtfRK/3gWAXuAJOu4qwCESGzawP9jODp/onpv4z8
	wLeZ89nerPiuxAWn+EWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvsGS-00000004vPb-39pt;
	Tue, 09 Sep 2025 06:55:40 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvnFy-00000003UBR-20wc;
	Tue, 09 Sep 2025 01:34:52 +0000
X-QQ-mid: esmtpsz16t1757381621taf35abd6
X-QQ-Originating-IP: GkvDGhRfvU5f3ziOtpKn3TX27MEXcp6MDTyVpMjXBxk=
Received: from localhost.localdomain ( [183.51.121.90])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 09 Sep 2025 09:33:39 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15890518757870112891
EX-QQ-RecipientCnt: 16
From: Kaison Deng <dkx@t-chip.com.cn>
To: Rob Herring <robh@kernel.org>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Wayne Chou <zxf@t-chip.com.cn>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kaison Deng <dkx@t-chip.com.cn>
Subject: [PATCH v2 0/2] Add support for Firefly ROC-RK3588-RT
Date: Tue,  9 Sep 2025 09:31:46 +0800
Message-Id: <cover.1757322046.git.dkx@t-chip.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:t-chip.com.cn:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NJzf8XFenXw/uHF9mUr+6o/3eWVYLRyPG8nBcTDgRZY6ECMIq51rHSyh
	SWrL+s00gEW0SrnjleEutwxBkoa+xkxAjzO7pfXvodOFlRd3knMBz6m6CUmJ4j2UpLvuqZi
	TGn5qJy3IRR8fVw8762Ij1LuhM07CnmBZPXLYePTzKUr0Mu9pUTQCXI9zJADTHiizo6HPpF
	SfhCvBzWnDObLhyedMZMrxZnrO19p8J9S6vp2x0R8sUFfTU8nEwARTXffASDhCf3nAoZECR
	npA8nbfV25+TRycrNIk6PYELJY1rBz6xIL6qW1kKK5DSkqxIJtTQBthkHPT5+/NSsIT7I4R
	SniEXlmPerF439kz/PBZ5YdcxItGl1/zT9Y5zgH0sktGPAuk2pOfsoQDOv/IFnUx1cFvAUA
	n8C3Vu+QO1ntB653XS+AXTVIJ//TAwnRt5KPeYjxHZ4Ma/WiC4Q9vMiqZwGqzCChWzsKqGF
	XRPnfTIbpZknmCh4jT5ZW90XANP6TNYfyM1sF9+3sehC7c1NlN3ic4eJysqHkyfNqd8cpRV
	huHKRB2EXc+7haS3eUSiQF2XpgqBVD5SHlCMfEMlEaXGm90vr2m7VqYpo4oN04APNROJ0vL
	+JAoKe/8EZdNLBmADGy3OxFR1REJ9gaaI1CLSUa/U2ogK7stAOca/UFj0RE191TbQ4dQlxq
	rqB/ggNcN0iDzT36ITG2zUUe4fRE+admXtfU4uJSlTnPzMSvplTyv2KAJHw5Il4pS6SQFUU
	WWeJ/8d/6a6HVsETvyyocuF0Gmd0zcuxlSeo4SRzXdd8ltqJ+Y9rdMeFgpWNScrtxDkJI+0
	FKzZT8POEmtRyin15suI7PMrN5wxQzdcGCCQBKLy89vM9SJxKNjNBuhAR8w5weaz9Rk55Ra
	egmW9OfMXf7uxTH07nGNUdaBEvkmLuNCU2y4GPwKiuYcD7DTLf1s5QknrkTmcjpFKX5hexH
	3AMglY1ij7LcggVn8Rh3Oga9mSVOvyiwTlFwK8hS8rwBiEL4kTXfT6N2FjKdvSJqqOZ2wPO
	j2NqqfHgBAVghP67W6YyHln51oXYhdA1DtqLAe5cXiERedCSwSdjikndXJL3w4rgtp8wG9J
	Zw+awP52yLJskDDUnyoNklQOtdOZLEkvhWz7NS85Wjj+rDufq/Iz2ke5p2Mz0ryYw==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_183450_897269_6081C59E 
X-CRM114-Status: GOOD (  12.04  )
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

This series add support for Firefly ROC-RK3588-RT.

Info of device can be found at:
https://en.t-firefly.com/product/industry/rocrk3588rt

Changes in v2:
- Add devicetree binding documentation for the Firefly ROC-RK3588-RT
- Update the description to match the device tree
- Adjust the descriptions of the model and compatible properties
- Add audio support for hdmi0 and hdmi1
- Adjust the attributes of sdhci in alphabetical order

Kaison Deng (2):
  dt-bindings: arm: rockchip: Add Firefly ROC-RK3588-RT
  arm64: dts: rockchip: Add devicetree for the ROC-RK3588-RT

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../arm64/boot/dts/rockchip/rk3588-roc-rt.dts | 1136 +++++++++++++++++
 3 files changed, 1142 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-roc-rt.dts

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
