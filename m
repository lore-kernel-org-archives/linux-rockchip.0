Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 114AAEDEBE5
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 19:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bk8Jc+wOn0T3l7TGZCcIt+1NHdKsRuarF1215JQSWxk=; b=oupBihx0cx9xZN
	ZJIx7RVtbXiplhPepdd/s0t/C9BPy8DU50OZY9LcS5oXxoNFgZ8jJdJE4WaYV9u4cDZAMlI8D8D6V
	cWZFHOYJz1stPB4+0gcC3ref/xKD8tmfz7UBgaQGbS0ehVtTRNnEAGjv+g57hZ0PYK3H5Ys5d2U8L
	71imezIl4W47Le33KAL3I986zewMNc8hvcSLsqC/KTnD0KVQmYgLF/41jaRRW2JcMz9Ng1Ya3TNLp
	+OBIaDy8FnkUhlvS+ZBzKnQ+8NKiiJQZJqrko9M3a3kaShFhDdjiwwYdns7O056p6tf3RS/1Qo+GU
	WlVBB2OwD5XsbeP+3pEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVnG-0000000FqdM-12nT;
	Tue, 03 Mar 2026 19:52:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVnD-0000000Fqak-0ffA;
	Tue, 03 Mar 2026 19:52:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 858ED44373;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5A1B0C116C6;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772567550;
	bh=Tsg7+g5+IzVoAa4NtAmUW9nOtVF1KEhB9DJB2ZeM0Z8=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=k2XPWd/fbyeZtRRpMaOOIpTVOe36cN7Jm90GjQVw3ZFwBHCcxP7TZl+TPXrqkaRiS
	 sMBhrwnvSMca91sQl+N32ziANKczVwIXMBYe4ixJNAzOU58umxjlQmnc9YB7Ttu2yb
	 liXDMu7UOiPhPtUe8PiVKtayrvL3hu6BA2p745l5x/kqrACuswcECzfDsKYlWXF1Y8
	 +1uJpUvfVcT3BXOVwJjNcGTG1pgiCHXePaVZDlmOLhkNcEKRddGApGOq7UA50ECpd3
	 Z4iX+TqFj/txFFXnXfrGEAjgePn3VS16aD9RPKjKsB4a4H1G2kuuzScWAXjbp2RVqI
	 3eUyk+irkzUDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37917EDEBE5;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Subject: [PATCH v3 0/4] Rework BPI-R2-Pro PCIe clock topology
Date: Tue, 03 Mar 2026 20:52:26 +0100
Message-Id: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPo7p2kC/33NQQ6CMBCF4auQrh3TTmlBV97DuKC0ysQEyJQQl
 HB3Cy50xfJ/k3wzixiYQhTnbBYcRorUtSn0IRN1U7WPAORTC5RoJSICP7WxJTgmYISeO7jTBH1
 NAbQxTqL0XnoUCeg5pNuGX2+pG4pDx6/t16jW9ctqqfbYUYECdwpeq9LlVVFcaKLhWL/Fio74D
 +ldCEGCzK01wRhvqvIHLcvyAW/XqfMLAQAA
X-Change-ID: 20260222-rk3568-bri-r2-pro-fix-pcie-355b020dd0d2
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Frank Wunderlich <frank-w@public-files.de>
Cc: Martin Filla <freebsd@sysctl.cz>, 
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1229; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=Tsg7+g5+IzVoAa4NtAmUW9nOtVF1KEhB9DJB2ZeM0Z8=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBppzv7Syif8BQdEO3VtydBbircS9IZVObETCauE
 8waThZ7wTmJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaac7+wAKCRBgAj/E00kg
 csqXEADHQTI7xNCuksTS/Xb6kCEdA7QqEbj0hAvV3O224oAAKxq/DBwIK4NCg2fkwjMODv08VgE
 jRdEam6+jORT/y+kev2u3+1nVC94l/q/jWgFRUehbU42GeGWWlEqexT/tvCQnLLSObOY+r9tydg
 SZqIR/6r/qE1wF2BucOFbXqKZEC2M6ZAYGjHRhRx+24Wznkl0/Aba6dhN9ffY4HxjDECviRLffw
 HfTM1fmPNtKN56mCKRvivsGHCmuBVDjwPjKpPyV1Uu7ApuBt2lVDJgynQmDPzDpfzvYDQ7MaI16
 A6JIkyPhb+TDxUmb60soVH9yFGlsvWtG0HAdho+B88jffsjCDfZXqiPoRrcMdaBYrwh6y706yyH
 nai572KhAOsU/RRDEuPrHcXo37KoEN3bGnPyUJGRpdvTLhK0zlnDpvPCZkR7BctlkVT+lLsJY5F
 lFiWdXzXkzdMKnJokbBwH8TfLq9qCiURcc3vYpT8u1VgKYlqIh2j1vSGu3ATEM5UQmtW9p/3LNz
 /W+BdciJTIQJarJKeo2miRan2Yx/3PNDgDfithQpo+nmNDBkSqtTUmtDHSnHQlwxnRIRrsRZjhG
 MRXVCic7WW/ATPW1177GmQ9UBX7jutsmI+Q6hOplP7dNuC++coJnH8R/KPv8AOEfMb+rVnyl7gD
 1JypALq0pulpaRw==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_115231_274397_90D7EB3E 
X-CRM114-Status: UNSURE (   8.26  )
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
Reply-To: david@ixit.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Signed-off-by: David Heidelberg <david@ixit.cz>
---
Changes in v3:
- Added commit extending the clock list with pipe clock for rk3568.
- Updated the clock list in BPI-R2-Pro dts. (Charalampos)
- Link to v2: https://lore.kernel.org/r/20260303-rk3568-bri-r2-pro-fix-pcie-v2-0-04665e55d5a8@ixit.cz

Changes in v2:
- Added patches for solving the topology issues and on top of these
  original patch. (Heiko)
- Link to v1: https://lore.kernel.org/r/20260301-rk3568-bri-r2-pro-fix-pcie-v1-1-b9ed318b4a77@ixit.cz

---
David Heidelberg (4):
      arm64: dts: rockchip: assign pipe clock to rk3568 PCIe lanes
      arm64: dts: rockchip: Introduce the reference PCIe clk generator for BPI-R2-Pro
      arm64: dts: rockchip: Use reference PCIe clock generator for BPI-R2-Pro
      arm64: dts: rockchip: Define PCIe clock pinctrl for BPI-R2-Pro

 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 59 +++++++++++++++++-----
 arch/arm64/boot/dts/rockchip/rk3568.dtsi           | 12 +++--
 2 files changed, 53 insertions(+), 18 deletions(-)
---
base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
change-id: 20260222-rk3568-bri-r2-pro-fix-pcie-355b020dd0d2

Best regards,
-- 
David Heidelberg <david@ixit.cz>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
