Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACABF606A31C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 19:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UUogv6ig;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=zHQYlXy5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4BkUNLJimgNpbiS1M3dgsopnuUL4yNVnOjG506glfNo=; b=UUogv6iga1rW3RDNNoAVJ38v+9
	Oui5fFMQU+WsRY98OpBTxByOBIXYG6u4n5Lo80RoxlJSFR3C9NKxHTV33PbFx35csSc847+e0oI3F
	AWASp+JiOy4Xw+2XQBePnVaGsjBebigBFwEmKrIVMy825PDdVKq0VFyXM24QstQUltiGuwTRHpP5l
	a9+ewNwqOzADxKE2A1OAtwHndrtSoedG94FMbSvYphDXIteZUUWRDbA/noMLvq7WY6GqNQmr+uuv7
	PSizgrOgvhFfBhH42aW7rCDPzzf72jvI49GwRDrJ4r7zdy1gp4MjTmwFOqXzNsLtAP8LcUwi6S0hm
	MghrUnkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT2mb-00000003ntl-01Z1;
	Mon, 16 Nov 2026 19:54:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT2mY-00000003ntE-42mY;
	Mon, 16 Nov 2026 19:54:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=+A+OuaSdltzVhcrF6R+QybPDg9GpacOqmis4w1L1a2A=; b=zHQYlXy56n2/30uvpOok2L7Tit
	I0Uo7H+rcViByKxP/Vd92Hzt7q+bOw6AW4IqOsxJAf4SjWKA8QqFJ8/4U9xzK8UIo4uNWP7HyFgA4
	Vw/0rybX3AQbTt7FCOXUag9Q2YS6rdwIOP5iQqjUhywi2IlBSUdask7Q/UTNFOGpv8dL24UKMmXSY
	oAMjq2B8fUMTD6ulGZAs8Ych2Ogu60g8/uy7zHMK01rApCSU2JPgSp9iGGsmtfCQfHQ7i0K0YcswE
	KyC3bLUZvkRFjL47B9/ofLkyeILbUdu4L/7k185etOjK1N4T9cND1bGwOfM/pScebc9zx1iEBgx2i
	Zc+pzevg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	hjc@rock-chips.com,
	andyshrk@163.com,
	chaoyi.chen@rock-chips.com,
	damon.ding@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de
Subject: Re: [PATCH] MAINTAINERS: Add two reviewers to the Rockchip DRM entry
Date: Mon, 16 Nov 2026 20:54:08 +0100
Message-ID: <179485884330.1574718.5658745486685817821.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261110101554.1809467-1-heiko@sntech.de>
References: <20261110101554.1809467-1-heiko@sntech.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_115427_021245_347702A9 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Tue, 10 Nov 2026 11:15:53 +0100, Heiko Stuebner wrote:
> Chaoyi Chen and Damon Ding volunteered to become reviewers for the
> Rockchip DRM drivers, so add them to the MAINTAINERS entry.

Applied, thanks!

[1/1] MAINTAINERS: Add two reviewers to the Rockchip DRM entry
      commit: 43ec31efbc92b2ffa2f707b04acc6d7a6173c728

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
