Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90A77C05027
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rfrgd/v9UtF8q2kY5Qz4ynFk42Md7+ZtKUa1MNeBE0I=; b=uB8VfpXT2iBP+x
	Hki1NqRQv7neR+sNKMA+0+VxPOm96ntx2Q4L+tPs5ftJfKQnhFT3mm6a8a+qrxfbaSy5A0jYYB5z8
	j5ZgpmytF1euLyqvRyyGIiRWY5v3du++Qyv4XTV1t7wzi8W52A1qdPqH5WIPsATDQb182I6tWQlEr
	w3mYM6pZW/C1sCn/VYUs2cX+lWclVqIKLT5N+xq4Jc16RAdXoWbCVVU7FyE9wkWAC1N5ZD74DD42e
	YWWtvUTy3nMlg1zDk38dqa4F6EhsscNM5N4QoETn7+sah6vQvphU9WiEeprkxDXwwq4r9/X76RWSH
	6ocYEdF5SXCOLtT/g77A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2iJ-00B3KF-RE; Thu, 26 Jan 2023 13:54:51 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2gG-00B2Jl-Eh; Thu, 26 Jan 2023 13:52:46 +0000
Received: by mail-ed1-x530.google.com with SMTP id s3so1925802edd.4;
        Thu, 26 Jan 2023 05:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kBzXbIjLvRdTa0w/vaMb2dG2HneZvQO9eV3thnNBNwg=;
        b=UUI3q8aCmq00poNBppLPOHFyK7c1z19Lbv5d5242AVypMv5CUSByag+ZAIL4asl6jH
         mlJ/UNNr+K6rqA4G5AvnKS3WJ9fKlcn5psHIymCeIPm+AIKsT4xKt+6OL8rxe3aEFSbz
         5cMHf5j2u01IM3hId20J+ddmOe/CXCdKrzp351JCRYlJr/Hr5fIprTa0yX1UHS1mpP9k
         w78/u57yXnVr9RUNQPt2/hzQTyaXqWJQWcqs1gm5AH0E73j2Sne7Gka6phFJYn4KSkbP
         MwRSZF9j4NqXvFUHOcxUGMf/HlhhsBFxMsvxb5kv8s1oCSL+YiVEybTLkzNTdX8zojeJ
         sKMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kBzXbIjLvRdTa0w/vaMb2dG2HneZvQO9eV3thnNBNwg=;
        b=WJc3W67bt23ttLFzvccPFWmA7tbsJB/+xVICKQIepHXFV75iWJpY8IIit99hgFuPc8
         vKEPjjFEWwNag30OSjcqqXFcyx3WeTtFDZftq/i/ugTm4kQ9CRPB17UZTWGLCCPg/LpE
         Rgnojkt2Z/N0Uad8EuPCXO7F3HJZjwemL44+f03ukh6Bo7OfDCeSKnAaiRH4hbLd62J8
         bVYiz0TP51iXHOaZy+BRYr3XVVUUSpR73ux1S3lJChKQ4LDmtywcOKOJ8l2tLCseth8i
         4uSXOZBtJM0bpjfkA1U7K+yx14r+r69fDmpWu0hMAcIa/fQhb3UBNOKFJH9SXC1zAPQL
         0lKA==
X-Gm-Message-State: AFqh2krxiggTx2+yRKLCFi41mM1by4TyOYt3ffm+8Cp5LoUUwCmIW/km
	0TVpNfC+ACzsOraj4xfqvjk=
X-Google-Smtp-Source: AMrXdXuXbuQdJhGAds2G2gVCjtPY37NcvVJ07i7nNOIPmyaLny8F50OQaCvccSlqKRST8WATWLo8CA==
X-Received: by 2002:a05:6402:5110:b0:49d:32d0:126 with SMTP id m16-20020a056402511000b0049d32d00126mr44761910edd.20.1674741160602;
        Thu, 26 Jan 2023 05:52:40 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id t15-20020a508d4f000000b004a0e2fe619esm591611edt.39.2023.01.26.05.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:52:40 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	wenrui.li@rock-chips.com,
	rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH 5/8] PCI: rockchip: Added dtsi entry for PCIe endpoint controller
Date: Thu, 26 Jan 2023 14:50:45 +0100
Message-Id: <20230126135049.708524-6-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055244_576412_60491D57 
X-CRM114-Status: GOOD (  12.52  )
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

Added missing PCIe endpoint controller entry in the device tree. This
entry is documented in :
Documentation/devicetree/bindings/pci/rockchip-pcie-ep.txt
The status is disabled by default, so it will not be loaded unless
explicitly chosen to.

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 9d5b0e8c9..5f7251118 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -265,6 +265,31 @@ pcie0_intc: interrupt-controller {
 		};
 	};
 
+	pcie0_ep: pcie-ep@f8000000 {
+		compatible = "rockchip,rk3399-pcie-ep";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		rockchip,max-outbound-regions = <32>;
+		clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
+			<&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
+		clock-names = "aclk", "aclk-perf",
+				"hclk", "pm";
+		max-functions = /bits/ 8 <8>;
+		num-lanes = <4>;
+		reg = <0x0 0xfd000000 0x0 0x1000000>, <0x0 0xfa000000 0x0 0x2000000>;
+		reg-names = "apb-base", "mem-base";
+		resets = <&cru SRST_PCIE_CORE>, <&cru SRST_PCIE_MGMT>,
+			<&cru SRST_PCIE_MGMT_STICKY>, <&cru SRST_PCIE_PIPE> ,
+			<&cru SRST_PCIE_PM>, <&cru SRST_P_PCIE>, <&cru SRST_A_PCIE>;
+		reset-names = "core", "mgmt", "mgmt-sticky", "pipe",
+				"pm", "pclk", "aclk";
+		phys = <&pcie_phy 0>, <&pcie_phy 1>, <&pcie_phy 2>, <&pcie_phy 3>;
+		phy-names = "pcie-phy-0", "pcie-phy-1", "pcie-phy-2", "pcie-phy-3";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_clkreqnb_cpm>;
+		status = "disabled";
+	};
+
 	gmac: ethernet@fe300000 {
 		compatible = "rockchip,rk3399-gmac";
 		reg = <0x0 0xfe300000 0x0 0x10000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
