Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 325A4CCFA04
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 05:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lbo3+jzjS7CnU4jMOueT9yjksoHq6btuFDyV4AMFVFY=; b=U53gURfcc2YhlC
	U9SJGV1zMQCkeCyXvQ/oDU4hjSB3I5SYIc9sViX6aRPRKSfvmAc+R7uCyHCqc2FSuB7gt9eIbVdKu
	g/q7Tnfo05z84L315QiozvTJxDJJCp7GD4poZW2NiC9NrgIs1ZO13HPw5ZBg/rGbut0H8LEwYyK18
	QVDbqN/b2LIWoBwOA7wuFxTsNlWM14Lj+duK8rH3jwEIGBxNvqu0yOu8b2qAF6nKzWDKSPAsoqTon
	AGVpINvU0anU9Cju4k35EXxGgyxYUbdWBlRkWrGeEEvalp4PgxV4iQzN+WfUR4mYowfj04rBkhI77
	roMUzG6VT38YzxVf3yXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGWUS-0000000D3Ng-1gCL;
	Wed, 05 Nov 2025 05:55:28 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGWUP-0000000D3Ld-2usA
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 05:55:27 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-7c6d699610cso55124a34.0
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Nov 2025 21:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762322124; x=1762926924; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fwi0DrEUoNTIOaZJZRTu2PMBRWvJKCPWH2oh77N1gps=;
        b=hgroCtjiNMsWlQcjaJMV4VKc3iY7mpXdAlZrf7zMJeBFV88Sr50MEsuH1QEQqh8m8v
         XWxTPn1JU4G8jX/4dN5oj1sFOhl3XK+yFM8CcsL2lo265ioEsJ9zXmuIaUgitUtgls1a
         7vsnyzgljf4fBgZNxhLCbt5bcixdV4sMe1L0t/uGE/OD/va9LZ9MiLhAJCNrGs0wtB6k
         QNZaavm9z0vpeS2Yg6BEWxDIgw4zqcTsoveh6iR7LXAu7JA/z8UXlCVjouVaqrSJYG8B
         4WC2aHOsgGS8gv3+WQpjz5poUFHnt4oawz7qKfxBEh8sfMFlrjmyslWjFVeXLHPXvg4Z
         lp1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762322124; x=1762926924;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fwi0DrEUoNTIOaZJZRTu2PMBRWvJKCPWH2oh77N1gps=;
        b=NeSCqFXUKCTKH7AZdokJuiee+KUfEonF3dllc/h8/NvrHIgZJYVG+6fxvBCobbSIyI
         OmSysKzcvYYl+/CsAXsOeTwo5YTs+9yGaNeDzcvVcxhB4VbFZKKTTE98x+Nmu4cwtzeU
         yKWUXvJ7RCrY2vbfGqkx4Q35Kg4DHtvKR+jK2Rh4T8OBB3O1oCHnm4apE7N8vgtJO50o
         4Sg0QMFuV5O+3yfXdGGlmSF9yyHxZ3wAKB7j8EJNI2163RP5674JKQ9Mv05hpURCYhh8
         Ir08MOhG6Qp0ud+Hk77e2MMZ2jjfhErjHp5/yRq/CWNs9gVcahNQrHjEFBJGjdppbaI7
         Rl+w==
X-Gm-Message-State: AOJu0YxS6DKLk8ZJiVBH8fBREoo3wAwV2GDUzo2Jil6TFYeOXNzbW78d
	lVwIi0Yk0iuAf5+Rjy5+lXEvKawofBvsgXjeEe0Lbi0QBj6f4Zsuzjz3ezDZNXOx
X-Gm-Gg: ASbGncvLTF/hEGwR8jXt7cIxOiXXCxicxJbjAklpKyskwR3i76E+5Cq4mPMiKJqG6JD
	IRp12m490Ung1SMhm87r4BaVWJKpQgGvlVOBWm7m5FYJECoD1TGbyaRV95KsjOokIv9zhRQffyg
	Lmwhwv3MBZ4vkWXh7C1yES9pt1FS4Iltvlej/ZDPl/s2/KVbHa1t4C6Rqs24fkT4SCrI62LT/tT
	nYbAmWCg6Dsa3b7TqbLqu4KflFUdLyzpjYcAr3rVuZZ0LYqKQgEAQ4PgNsv+dndeUd6Ym6Sj2gG
	2IHOD7kIllCI7wQSXsPCACgdkY1rR/4Ex2poCtTRAKfV15cK037VtGAaRPc00DfBi10nyHo/rX2
	9uN4q8HSRpv8qyGDsBEDSnqBEkNqMQMwKq0WBLh1CjzpY5QyTFHqeP9FLSCW6cQE=
X-Google-Smtp-Source: AGHT+IFEVR0qbygzze5iBfiTi1hOIxTOUWBa+aFthKdgTb9tcWOqhz0feyJ/iBoBrEyZdPQs0msfOg==
X-Received: by 2002:a05:6830:63cb:b0:79e:69fa:6bcb with SMTP id 46e09a7af769-7c6d140f2e0mr1585902a34.13.1762322124566;
        Tue, 04 Nov 2025 21:55:24 -0800 (PST)
Received: from geday ([2804:7f2:800b:2cb7::dead:c001])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c6c2448c76sm1714476a34.2.2025.11.04.21.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 21:55:23 -0800 (PST)
Date: Wed, 5 Nov 2025 02:55:10 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_215525_758334_47424A18 
X-CRM114-Status: GOOD (  12.33  )
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

The PERST# side-band signal is defined by PCIe spec as an open-drain
active-low signal that depends on a pull-up resistor to keep the
signal high when deasserted. Align bindings to the spec.

Note that the relevant driver hacks the active-low signal as
active-high and switches the normal polarity of PERST#
assertion/deassertion, 1 and 0 in that order, and instead uses
0 to signal low (assertion) and 1 to signal deassertion.

Incidentally, this change makes hardware that refused to work
with the Rockchip-IP PCIe core working for me, which was the
object of many fool's errands.

Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index aa70776e898a..8dcb03708145 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -383,9 +383,9 @@ &pcie_phy {
 };
 
 &pcie0 {
-	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+	ep-gpios = <&gpio0 RK_PB4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	num-lanes = <4>;
-	pinctrl-0 = <&pcie_clkreqnb_cpm>;
+	pinctrl-0 = <&pcie_clkreqnb_cpm>, <&pcie_perst>;
 	pinctrl-names = "default";
 	vpcie0v9-supply = <&vcca_0v9>;	/* VCC_0V9_S0 */
 	vpcie1v8-supply = <&vcca_1v8>;	/* VCC_1V8_S0 */
@@ -408,6 +408,10 @@ pcie {
 		pcie_pwr: pcie-pwr {
 			rockchip,pins = <4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
+		pcie_perst: pcie-perst {
+			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
 	};
 
 	pmic {
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
