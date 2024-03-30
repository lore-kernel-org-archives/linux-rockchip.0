Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7C4DC47DD9
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 04:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOoN1tkdCfTrtwB2R++e7gp/mJRfy5RdglziIXHGw+k=; b=XkNjnXnzLadeI4
	1Y+u4Vt83ADfQVtCkqWq1IstEu9LKO4tqz+yU8wOU626nPOzGhOyC92Y2MbzC1uopMt5nyJB7xR6K
	9L29nmEyAhPjxYTS/Mmd1JNPjJ1UF9ZCcgF7X7sCxg43RqvLZ/qdll07DkRRZli9+ojRnQmwEl9gq
	zkDdneavbg1YWAwKTtnuf0XfgmgUCZn35O/DAkbe+FEDVfao9Kz4OHWIBs6ab3A5EZ/x4KkPew+Tk
	0wCXMQViODaVu6a/LgQXaCFTyXYRp/aoEjLsqyzdqEYpZpvYhtr7Mp05VnX9JMErGUfkq7nVxKuY1
	l+rU3e8H+cEnOpbb8hJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQEj-00000002l7j-1Q35;
	Sat, 30 Mar 2024 04:22:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCq-00000002kGn-1oxd;
	Sat, 30 Mar 2024 04:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JfDxPkEBsKm2oVBZv1ybK3aemzPSAqdhblJXfRHwyGw=; b=PI6NXw8ulQRBgPMSfSZ7paHIcC
	0Q5Q67K+5MoIS2nNygM3KkLSG9J+fFr+RbpqZrY1t2gK0T/vnRBikewNFVgufXCOiSb6RA7n5abZu
	2WHSfSSdYoxOy/BHqZDIf6ke+nkoN6duL1kvgWCaLhLxkRTJ1/35mDP7c/wFOk/EwD/rX7y0Ad0hp
	hPyTu7GibV8D/YQX3lZuqV/84XyFjK7PqkRbU4QOqXhipFwSN/f8R6qcdu+psdYBEuTcZdTGmJjdu
	7Lv6UQOFwPjMknvrz1SHSprDEP1E34fCHBV70znTiXZwlPqLih1IMTPnZfojEDvI7QEae8Zzg7b71
	YOZLjpJQ==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCl-00000001uRj-1s9A;
	Sat, 30 Mar 2024 04:20:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D919ECE2FF7;
	Sat, 30 Mar 2024 04:20:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2055C43394;
	Sat, 30 Mar 2024 04:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772424;
	bh=9stkOLflAG6/3kVK40zaxko5NFLtGR7KPzA/Rp38W/Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lWsIvubV/iQ4i4niDzLQfexxBezMLA6Zs/aP7fLcgCX2tglP5gdV3brj4Bz9Gn86R
	 j9wWSzeDvQSxsAFc6AE6sOb0Ee118R/fnDv9W3UVOIHXjg72qCpyH9osLLvh7ueG1R
	 LU1HOQTIy1rXCmDjmWks7pviMywZPZeDrZn6P8aYHpwly7byfqy/oIn8c2KtGx/eyb
	 IwXVY0BDYNlkkaFC8u9qZrJ7jzz9y49V9n3rDG5CdOZuvah0qQCvc/b7atllxeIlZS
	 UJOiGrSEccfHsZvLDI/zDMFzOf9aW+yHkAXsrIn4weWtD8uCMNN9ML//R0dUkH+tKc
	 eHpVJglbc/osw==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v2 17/18] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add ep-gpios property
Date: Sat, 30 Mar 2024 13:19:27 +0900
Message-ID: <20240330041928.1555578-18-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_042033_507721_F82DA993 
X-CRM114-Status: UNSURE (   7.76  )
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

From: Wilfred Mallawa <wilfred.mallawa@wdc.com>

Describe the `ep-gpios` property which is used to map the PERST# input
signal for endpoint mode.

Signed-off-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
index 6b62f6f58efe..9331d44d6963 100644
--- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
@@ -30,6 +30,9 @@ properties:
     maximum: 32
     default: 32
 
+  ep-gpios:
+    description: Input GPIO configured for the PERST# signal.
+
 required:
   - rockchip,max-outbound-regions
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
