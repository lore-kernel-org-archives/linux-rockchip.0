Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A95C7C369A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 09:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b32V+OLkpneI+sBB9h4KujCW5oa22zcnprBrH8JfZt8=; b=lXH9LTRuXoE7gE
	yQWDOzzAW07c39ZfRxW5BR79TK1nfjzoytrzYPy/oVXDa9vSxTkKX7mFDLb2Hfo5hkpXb2jv+7nzI
	VOFg0fy0LeRUl7ppkJQq1PpG9QSC2/f879YdM0xhofcxBqcYen/RGOo2gyMT0qH3122H1Duo6x0Sd
	PTzR6Oj1EkEHfT2Y2UgAJq50u/uFEZ2f+nbuawTro/n/f85VetbgT1GTr4pSSNGM7rW2lBllC85vu
	P7eTdT9zMQALvlLtqvl1DVLhK8eQdq3jH9be8X9N056lvKP4Dz8xM4n2O4A9dJpgRj9+o2Ec2vv6P
	yj+/T++Vb98quSPhtkzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nr3-00000009s75-00JZ;
	Thu, 10 Apr 2025 09:05:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nfO-00000009pAJ-1haB;
	Thu, 10 Apr 2025 08:53:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=2uSi0rBX6HJS7l/ixoRnzj1B4Bl35/AdR7/AHqL8734=; b=yhL4ITJtDKiM/Z08hJ0g582CaA
	V+aKPaaMX1AnJ55IN0fFECPh00KiNKjAF5C6nQgmTj+tQhpIIoOdHghXd3/OgtwLe3GoBWjvB+hla
	p80iVC7P1YIqpXgs5OGqBccorpN+pxG8gfk9bAWia0x/XU6HlkjWCh/sW6Zk+m1HP7pAU4R1t1MPV
	nX1kRRcWSCnvTK6fsUMc3Oj4m1BI2p52eaepV/MspllkQvmh1GtkJj0Qqs0pmTzhexnTdAhjrW35q
	loU9ioxkHLEQ9qf+x0RzqldZzmMeiXuZyVP/09SvPOV2in7RJkjo6mqpYFKGXhrEDYTp25w9gJELt
	MkbVFR5w==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u2nfG-00036h-JV; Thu, 10 Apr 2025 10:53:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	piotr.oniszczuk@gmail.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop2: Fix interface enable/mux setting of DP1 on rk3588
Date: Thu, 10 Apr 2025 10:53:27 +0200
Message-ID: <174427520239.842175.8681778427919130994.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250312064218.524143-1-andyshrk@163.com>
References: <20250312064218.524143-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_015346_443688_ABD9E11E 
X-CRM114-Status: UNSURE (   8.24  )
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


On Wed, 12 Mar 2025 14:42:10 +0800, Andy Yan wrote:
> This is a copy-paste error, which affects DP1 usage.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: vop2: Fix interface enable/mux setting of DP1 on rk3588
      commit: 210db264cf87da8908c395b44170f04469009035

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
