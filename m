Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81ACBECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 20:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CvIaMYKajEx2dHTc1JSkhrAw4M25nSdeJa0k/YehWo=; b=i5rIViSXfYcY/t
	Ri/BR6lpHJKeHTh1D/ctQ6RaIYuT6vsCHpB/KppvItluBhpZpLyPqDgYoU9id6j622NfwcRKCtPAn
	DbqGEY8pEr8ZpqNPtOxahmHF/rEHqrVl3cvHd3BiDD850R8AIQMg660TFX915cMPJ+/K7Vwb+g5l0
	RRhkHJjfvSbARFEWbrP6FE2pTF2COXpVBamOKQ6mInlN5S0Ob50dBzv2nn1ncm2LxFSRq+ikt4iDS
	cRYZiZfbpu8nehoHOZdhVRh9Dah6nZDy6zcntK5zR/LJYt1hcWnqHcFUQ26OmrgdZZhG/0ENzLzvo
	3eXFNJR81OLRAOQDpeLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEwj-002sPn-NS; Sun, 30 Oct 2022 20:30:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEwO-002sF1-Uc; Sun, 30 Oct 2022 20:29:58 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1opEwI-0005lw-D7; Sun, 30 Oct 2022 21:29:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 1/2] ARM: dts: rockchip: fix adc-keys sub node names
Date: Sun, 30 Oct 2022 21:29:43 +0100
Message-Id: <166716177915.1683006.10736978390715698837.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <7a0013b1-3a55-a344-e9ea-eacb4b49433c@gmail.com>
References: <7a0013b1-3a55-a344-e9ea-eacb4b49433c@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_132956_999539_3FA9F6B1 
X-CRM114-Status: UNSURE (   8.60  )
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

On Thu, 27 Oct 2022 10:37:32 +0200, Johan Jonker wrote:
> Fix adc-keys sub node names on Rockchip boards,
> so that they match with regex: '^button-'
> 
> 

Applied, thanks!

[1/2] ARM: dts: rockchip: fix adc-keys sub node names
      commit: 942b35de22efeb4f9ded83f1ea7747f3fe5a3bb2
[2/2] arm64: dts: rockchip: fix adc-keys sub node names
      commit: f2bd2e76d6ea13e12849975adae46145375532a4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
