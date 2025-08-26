Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D28DDCA0EFA
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LDseZljaMcTHkb7s5uyMS5KmgwS+jCT67olD10k+Cj8=; b=wX9lJNjF/L8Gt3
	Ok1Jzdh7m/B3eiS7txY2nfuDbzchw67Flp0nssfPtd0lKjlOqFW612wwLK8woe16wRuCWTj7zub5h
	3oArOLevTBDVIwogEASvn/D2Fex0i7P/jQH8aichTCo+Bp/v6sVYxKhFV8RP491MHL5nP56KVwZyi
	rLeTTsar1IFr63I6bUvvgbSxdqEq8WQav2TgijoqBHzk4vRxlfSUQW2g2IQwxF7ROGFhuex4c1bBE
	0V3LlRPq+wu/xVnIHpoLckH1RtRUsRox2HKyazod2GoyYSKr0n858iL9nM3HhJUVw5EhhDlUuLc44
	g03At4m0kWSuMk/u/Bqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqkCT-0000000AQqN-3I9F;
	Tue, 26 Aug 2025 03:18:21 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqk41-0000000AQBy-33l9;
	Tue, 26 Aug 2025 03:09:39 +0000
X-QQ-mid: zesmtpip4t1756177704t2fb025d3
X-QQ-Originating-IP: kXz62wQIAgQ5fDoxb092TxXaej+6UJKZlmADOPHVy6k=
Received: from chainsx-ubuntu-server.lan ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 26 Aug 2025 11:08:22 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15050431008221731089
EX-QQ-RecipientCnt: 11
From: Hsun Lai <i@chainsx.cn>
To: Fred Bloggs <f.blogs@napier.co.nz>
Cc: Hsun Lai <i@chainsx.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/2] Add support for 100ASK DShanPi A1
Date: Tue, 26 Aug 2025 11:08:15 +0800
Message-Id: <20250826030818.3485927-1-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: NSTsyPg8kQQYEWo4wIjbJseHhQwT0UXY7NtBwCn1y7wOdMfP2wp9QtJT
	VW9udeaOBGlStOqxHWfmUaMi1W5AhERlNoEz46AMYu1b2+8Xh/Hs5jJ5fl2mhbdqESOHxad
	/aJga6v6P2K1OdxkJAmMN587nVc7CPqpfAkWKgUjnJyeES+xyMTW2J3fcq7ZHWH82nfUSaT
	Kwv+aNmxUsyNwouYMmqvFDh2JNQnaH90iEit+ygSnv6EE7xzHwiyVyVfUewii77SiGcqZd+
	LuJW3YI6ih7RJKE1+XzQT834QLt+j0bJW79CdgM2Tx7uk125GrTv+pXtVd2kENJWz0lzQpo
	GLcJfH3K6rKfLd76clGpF0pfqMh7mr5b944iulTPvnahX4mf69hg2q/fEiCIJ716SxVUUUG
	hNUEMD+JGRGYMeLRwkPIslnEqlIz1ZpUaJkfZWDpNBiFFj6K9+Y8DTFmAOwUcBDqVlCjW6L
	cDzi+70+4nlXJ0aSCv0F657uzg9HBFXaUNmnJPXBsuJANHsP9xi/CMfTElEPDTrEEpih1t4
	eSM7ZRxzabP6cF6SQgxOMBUzhM8FG+ioqSGc4tFaBWU3MoWCEgJ6A41vX5BErzdUZNJYYl4
	0KlEz1OIhpZhQFjykICZ6Fbh3ws7TX4AXuqI2bVGmWeIxa2yziQKdWvKUT52XC4dbzUa56t
	fJ0CC2jV7IyWLhnt4Ph92En8xyQ+rGqc5W6uIkY3WtLWcNYaibEAUBpJxYd7oEN1ak+L4DQ
	AbDnF7E45/7ZLTRdPi2n/PuHTkh4lyiA5w0NwA7twSdNysE36dA1JBfs2mhc04QUW7AUCOZ
	iTQrHcLaBqfu2bBspVLLC9uc1ZkV4ZMwEgirk5LBIJWUVVrq7qB7CG/rbBoEFEkm44icZ6i
	M9fRRi9TEJeCvHMRPMpjP5Sh34ixghP+K50Zc49r1btQtObTyoaPtwCo39sPQHRufQw6pi4
	g+cDPk/G/L8JhTscZWxEoNhfjf4o/FWSzeGUnNYdk21fBpw5T+IhWaXntMAvZnxlqQ9RCjV
	ZRa8S658WhsXJoFyMaz5hDxR3/NiWVJIW9VIC2exd45rEnVHcB
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_200938_274615_8285CAC0 
X-CRM114-Status: GOOD (  10.29  )
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

This series add support for 100ASK DShanPi A1.

Info of device can be found at:
https://wiki.dshanpi.org/en/docs/DshanPi-A1/intro/

Changes in v2:
- Delete the pwm include file (Chukun Pan, v1)
- Fix vcc3v3_pcie gpios (Chukun Pan, v1)
- Adjust the order of some nodes (Chukun Pan, v1)
- Fix sdmmc (Chukun Pan, v1)
- Add phy-supply for u2phy0_otg (Chukun Pan, v1)

Changes in v1:
- Add support for 100ASK DShanPi A1

Hsun Lai (2):
  dt-bindings: arm: rockchip: Add 100ASK DShanPi A1
  arm64: dts: rockchip: add DTs for 100ASK DShanPi A1

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 838 ++++++++++++++++++
 3 files changed, 844 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
