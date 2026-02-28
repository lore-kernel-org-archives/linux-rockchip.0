Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FECC1048925
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 00:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmXjYEdqZWpq28lfW9h8Ju31OXIi2pdQ0TdkDELyu0o=; b=uTv31P1BGyI6wG
	PYsQtcB/LYafqHMA0sTbuU2ohxcnNWCH5peUY+qc+bS70/xLI8HNmIGhHkxnhE4MvjxwdMiNgai6s
	P2RYUDknaY8vQ4aEWdbe/Xf6eUUnIcw8XpRN5rlUVr9Z0UnH2CkcNkDSBvCeesIu8hVl1V9KPxGzi
	cs7MGGB19/0oelund759HBEQnVe/MTxMHM5FOgKWjhhxvQ/tnxlBugcvdblEc9tESEPDJkSg7ydGT
	htENIXOyY+rkAQDDa+W3b9BcgxOqnIFH7kiELGwqhgzndPPzYJnOuj6HWgUTbwGUNgJzqBKTmBS3F
	MgNDPcauby9tymCRv2aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8ck-00000009MBy-3NeB;
	Sat, 28 Feb 2026 00:56:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8ci-00000009M9P-1zyj
	for linux-rockchip@bombadil.infradead.org;
	Sat, 28 Feb 2026 00:56:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Vjfco02/smFUClEsqTheeyjpW86+y48auZFweZaaMU4=; b=lncIZBRJf8PEcgP2UCbMJI9PRr
	zU7scc5G+EbvT7U9qEXSmLFp0iDMYoAz75eCSCoC9SxheA9N5qoasZ6f/NqL+aOymeleTeKgHQfWD
	nvKYPKD9qRoTAdLOvTXtNQs5rFqcDmtMMnRPgF/BP57x//shQqe7HObfj6hPXxc6V/R9JhRWe6qdd
	DCQvSqTpf/94NheCRvmLJa55ppuOcVG+wN50fDVScbzZjZiixv+oqxNhK+/J49lethH2M7X13MHYm
	ECkpr+icWlpg9ci68w1XAz99OnsOltvLnGnmrDHcyYU1jNXb4Uxs1tp0YcmddDTlynlkpAR8XM/4e
	RcqzPQnQ==;
Received: from mail-vk1-xa2b.google.com ([2607:f8b0:4864:20::a2b])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8ce-0000000E8Wi-3aPz
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Feb 2026 00:55:59 +0000
Received: by mail-vk1-xa2b.google.com with SMTP id 71dfb90a1353d-56a88bfd470so1992555e0c.0
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Feb 2026 16:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772240154; x=1772844954; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Vjfco02/smFUClEsqTheeyjpW86+y48auZFweZaaMU4=;
        b=QqyO2Bsqa7vdVuyUReQZARmT/vqjiFKP5AO0APEtfzlsoBx1j8C2zvJF8vCF3nlqlI
         m/Je6I0l51SaoYIVjT/70oaCK4TS2CUHuyYRrcdvKZOy5U0U02pj7ymKhyvgB0hFM01x
         sP5jUKcjTMaedNKpR4Ip2bgDbW183X9f1l15tZdRIF5m55PeUct5ICsXwWePocLA5tGX
         FwciZB1HWQQz4AwB0vYB/HNIW2ZqzMaxT58PTZuOyYIXnfKyqIYj6Of9CvEgvGdT10h/
         Iv4QI35W3lrjzyuSTZFIkz+l9N6rku73lVKzW06CDrMQhNjCAi0gwP7DAHgw3BBY4/NE
         DC5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772240154; x=1772844954;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vjfco02/smFUClEsqTheeyjpW86+y48auZFweZaaMU4=;
        b=Qyh6nMW65SSz0FvqKb7yf33fW0BFTjdHwtLUAvkaPkV6GJdqNcJNqetEGwyNtJDS0J
         sGUGZUsdKg/EEZUmif8ErWwHFJZvBu98sYzjHWrjCdK0x1tAiuFLaGlcBmlQK5kuQ8Hl
         htpr8qKsVyEZTPWnKlLLEx8VtZxW4ImiXgYumKAoEI0GyC/ycJsQ+5jHrefKOQV19dJ6
         qSSkU05OdLcKPEODye5ZJ6mgEBiVJIPKnVzVvETroaHE62cwzO3yCkWmJldwbq1moQuh
         v+j5SMdbpawpHRZKYII30galgW3SNOPm8G0eGyyP/tlvL2L8ZhNwetirs+LQnVZ82mP3
         slmA==
X-Gm-Message-State: AOJu0YzATxiZxlayYv3CZUoFtco2aqyYP6hfsUA3X3DJTa1DB4tp4mv5
	FfLq+MwCqT81u0USQDbZHXv29Tq5ZlEKsyeTh3olnmvWb1Qc9g88c2ZF
X-Gm-Gg: ATEYQzzJuwgyjwlFDHo4CRlk8HrKiobe43Z+fkr3oWxpJdreTQXjcdT0FkdUPTTTKpZ
	l/8odUth7ekuIQeYsEk0eMOQmbcfZikIt4PiD7djItFZCv/WXSavzTTsoHHMZefIbFrpUsL1YcL
	E2td++kzUeJRz09joTklgbqxEUeNPXHrVCmU6wVD+QXvoyp1MKuDCY4TJ6mzxI7wBdp6PwPPf6r
	Ky07ljh2bS/8VGKJlYssJxV1boyRkL7Q100XAk4RtmK9vFGg9QYr+FaI8oOMHJAOO5KaVnGoN+d
	lRWF4luuIvFLRpaSkgvmZNPsXyai0OLdVawPU8ick+F37buxzUv1esb5tn0B4JFgg7glYxvzp/0
	BWHxYtChMH3MIMZo5iCGU4+tPm37aNep4q8KoMdOjUlWFnOS1wgE/+lRkmaCj1SgDYycxFYJcAk
	fHTOXuMYoJbg==
X-Received: by 2002:a05:6122:1da0:b0:567:4838:8e4c with SMTP id 71dfb90a1353d-56aa10046d4mr2709747e0c.8.1772240154391;
        Fri, 27 Feb 2026 16:55:54 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91bb4fbesm8368019e0c.5.2026.02.27.16.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 16:55:54 -0800 (PST)
Date: Fri, 27 Feb 2026 21:55:47 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/4] PCI: rockchip: drop 5.0 GT/s defines
Message-ID: <d0ccf2b80715e956f15720ebe45880705272ba43.1772239598.git.geraldogabriel@gmail.com>
References: <cover.1772239598.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1772239598.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260228_005556_992545_FF8BADA2 
X-CRM114-Status: GOOD (  10.46  )
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

Drop the 5.0 GT/s Link Speed defines from Rockchip PCIe header.
The reason is that Shawn Lin from Rockchip has reiterated that there
may be danger of "catastrophic failure" in using their PCIe with
5.0 GT/s speeds.

While Rockchip has done so informally without issuing a proper errata,
and the particulars are thus unknown, this may cause data loss or
worse.

This change is corroborated by RK3399 official datasheet [1], which
states maximum link speed for this platform is 2.5 GT/s.

[1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf

Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 3e82a69b9c00..b5da15601b58 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -42,7 +42,6 @@
 #define   PCIE_CLIENT_MODE_RC			HWORD_SET_BIT(0x0040)
 #define   PCIE_CLIENT_MODE_EP			HWORD_CLR_BIT(0x0040)
 #define   PCIE_CLIENT_GEN_SEL_1			HWORD_CLR_BIT(0x0080)
-#define   PCIE_CLIENT_GEN_SEL_2			HWORD_SET_BIT(0x0080)
 #define PCIE_CLIENT_LEGACY_INT_CTRL	(PCIE_CLIENT_BASE + 0x0c)
 #define   PCIE_CLIENT_INT_IN_ASSERT		HWORD_SET_BIT(0x0002)
 #define   PCIE_CLIENT_INT_IN_DEASSERT		HWORD_CLR_BIT(0x0002)
@@ -197,8 +196,6 @@
 	(((x) & PCIE_CORE_PL_CONF_LS_MASK) == PCIE_CORE_PL_CONF_LS_READY)
 #define PCIE_LINK_UP(x) \
 	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
-#define PCIE_LINK_IS_GEN2(x) \
-	(((x) & PCIE_CORE_PL_CONF_SPEED_MASK) == PCIE_CORE_PL_CONF_SPEED_5G)
 
 #define RC_REGION_0_ADDR_TRANS_H		0x00000000
 #define RC_REGION_0_ADDR_TRANS_L		0x00000000
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
