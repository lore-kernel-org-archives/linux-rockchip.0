Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56A13C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 09:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eb+ZF10iPgzoqW30RqxnXKkv0IPTCdU98ksAhkYkeEc=; b=sSwtd57OwMlRXJ
	ybNJDZuGOn+nuJQmgBp52sLwWXbC2q/cjL4yCEh+H6T2i4AyeoL34Q/8CrOa8WCRYwCPyBKD5QOjn
	1eST8GfsW0RhVAF+5APGPLG7E04vyYpbWJR3IsGb2kicimO/XFBi1htpusJ31UPPBx/UMD4da6oY8
	SA08Lb4T2Eb7KeC4phflEAE3BY38jUVXMmswqQVu4ibRUZeqhQKmaylFljXNl2OKfaIqg6DC5OIEA
	mudrZH70RHcXe7B5KjBpeZAlFGRroZhobW0pdsQ5VjrRdfPATUFw/EF791By4xBwYLLR1UGfVVuc4
	DMu5sPbJm0640oKqicMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbIZM-00DzhI-KC; Mon, 04 Apr 2022 09:00:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbIZJ-00Dzcs-LL; Mon, 04 Apr 2022 09:00:14 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nbIZ9-0008Ew-Qu; Mon, 04 Apr 2022 11:00:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: rockchip: use generic node name for dma
 rk3036/rk322x
Date: Mon,  4 Apr 2022 10:59:55 +0200
Message-Id: <164906273049.1398682.4468536206170624180.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220331125644.6841-1-jbx6244@gmail.com>
References: <20220331125644.6841-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_020013_741074_ED901636 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, 31 Mar 2022 14:56:44 +0200, Johan Jonker wrote:
> The node names should be generic, so fix this for the rk3036 and
> rk322x dma node and rename it to "dma-controller".

Applied, thanks!

[1/1] ARM: dts: rockchip: use generic node name for dma rk3036/rk322x
      commit: 146c9a346fdd0506228cace62cf324e4c1e3705a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
