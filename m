Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5EC606A323
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 15:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=k87oTM6p;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=bOO8oDcJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=r5NxgD9V47Q62aDyGfXPB+b44v3ggJyhp5jQeJKt3xg=; b=k87oTM6p6nb1X07IdUn0qqeDVe
	U9T60RNwrtw6ee/Zn02Z980puzcMBJPHVh+RifCy8oPLCO3O6NjRmrI9qwKlLDbX5BkTKqg2Km5BA
	fzWoWOSwKTVspbFMZNrW8oim2Yht0SsI2YvPQTeE9Z+cIljLrtda4U1Nzl8Y/XlAIc/eTgt2eVjJy
	Hc3TgO03IqjO+X6mL9dFtWhNwuSW+IzgFiZH/7OiPgGty8v+fXjDn+IsjK05JiTdEDXiyitmJGN6y
	mMK9xJIdLuHxC79Gx81bAYrloiLQo1B2pT5na8ftzRZdPyD2nIb1pusl2kkIP3riwLNJqWwI4ym6b
	gSndkSCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSFNX-0000000GLfs-2Esk;
	Sat, 14 Nov 2026 15:09:19 +0000
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSFNV-0000000GLf4-0GRF
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 15:09:18 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-36e99cf7bb3so2587674eec.0
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 07:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794668956; x=1795273756; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LIozortPxX9/yGgYF5RVAdU5h+CP6K/5KZOyPsSClnQ=;
        b=bOO8oDcJO3SApUANfeOnXK0iCWqugFSjO026iiCCkucUqzrMJUBBiJAKJ5nLHoe84p
         vCPEbyiLJ5CEPsL4CMp/1zGUXRfarEMBmuAvx53uRwVFa/rdUTWyz+G08VNMMZMZ0MTl
         N7x+h/d28F5dkbT7WKfkmDm2ljUsaoAHVqfJ0O73PhbVIUtDkKX8eVmPX5MSY6JY3cxt
         m8nW/QLMfaV4JozqyJ5EKhzxrhJYln0SAzz28a6DonBUVDRktYfyv212DTZV3CIUKaak
         Lq7SEJ2TpiZ0eGJNx9lOiMtA5YqfozoDDA9Z+yf7mw4IhojXLYwUpCbpwmo7H6odsYJj
         rk4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794668956; x=1795273756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=LIozortPxX9/yGgYF5RVAdU5h+CP6K/5KZOyPsSClnQ=;
        b=aMvuv4NtGZRZYCAHGIsXqYFz8cT+WkrXgoBhzononWD/jEx7Yg1orddY+JyWLy19vV
         2G+Y476+hOClne8UmHz8S6+MAm3vpwoq5twM7/IoU3bFE/kNa9vWCPu7/Q42vJmYPSzO
         lVTBFxFSfN4QrCMGYLELCrIoQkDedIFea7bxNRNP3WiLDLq4Xys2ucIkRNLYdK27x+hX
         HCNOp+xBLiGOIGHLR7+F6rE/dWGlrCZTeT5CONAbQqe3KXGU7M0CHyPCf07b7MMglUjD
         J0C+C7XNqsAI7wjnrD6muqPIxh9m79Xt2y569AP1OJ3JQ7IySYvrQKrPzjT+EsM8Gn9Y
         o0AA==
X-Forwarded-Encrypted: i=1; AL+hErHcox0ZwLUJbMv3t1yvIgwTNPRo0YBN9WzkyRn2zOeYZ8EW63B4MppIGsNU7ECFRROrVYrlCMx3mZatbknotw==@lists.infradead.org
X-Gm-Message-State: APuU4Z94KNGykOZh5RZLsf6AbBCNCVIIpqCcqJuJ0MxynpgkOAq5yiZc
	7oGM8uUQ3KkzweA0QHOBKyTp4XkgH2AhoytANGDKk3wOQ0o9BCpmlpPfjSOALen9MvA=
X-Gm-Gg: AYBFou2KhQwlH53DO0wY5DHxgS+Q++0YCEEl/i3XYcJSq+xl8Ub6syJDijrLOteHWXb
	UQflp3KuS6+1YZrI1xYV78mMIz+cJuJBkvnxpPo0M04oCoDY/hD4gzpNgpKtMLe/iIiW0eKoY2t
	ekbAGW72kZiT5P+CKwuEgMTvs1K4ly+moSEEn3xp6XfQ65W3R9M+Ed1HLGQUHYlgWwx+8NDT9Bk
	YlVPqnZY70T71K6Ickh0FbX9fs6wnQErVsW2SRr2k7IbZQAg2rfe2USxOxMWfvuPq0BO2RVFoN5
	mdhIdWndPV5qiIOdAUJVTfy8aRiNbIrIQEJD3ARRpWSnCImIUNOYwoz77JttdhCSU9SXf6Z7yx8
	wIz0PBh8TdmCFbtmwSMeXXC0myDTHpicWU8GGovuZjxh/Drffs7FnqyMVQHPrdb/wO3r07XHtFA
	aEOYL0kxdW2JMGGMc+uRi70UGRqtMTtXLbD+wY/eJnruNbrgasCvaEBw336UFCSKxrcQgknpu/D
	r0VOQfyAnrCZQFwWAzC4yBfvHNKHfmh8oLKKsrBN1TYHqdOKTUlHWwBm/585h65aGCl65GVE3f4
	ypf2lgmyGK6IxsmYbws3zyqfhw==
X-Received: by 2002:a05:7300:cc9c:b0:371:5cb0:4929 with SMTP id 5a478bee46e88-37967dd4c20mr5561636eec.25.1794668955716;
        Sat, 14 Nov 2026 07:09:15 -0800 (PST)
Received: from arch.localdomain ([2409:8a2b:a08:f11::1003])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-379563e6b6dsm30427886eec.21.2026.11.14.07.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 07:09:15 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: luca.ceresoli@bootlin.com
Cc: Laurent.pinchart@ideasonboard.com,
	airlied@gmail.com,
	andrzej.hajda@intel.com,
	damon.ding@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	jernej.skrabec@gmail.com,
	jerrysteve1101@gmail.com,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	simona@ffwll.ch,
	tzimmermann@suse.de
Subject: Re: [PATCH v3] drm/bridge: analogix_dp: use devm_phy_optional_get() for the DP PHY
Date: Sat, 14 Nov 2026 23:09:07 +0800
Message-ID: <20261114150907.305160-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <DMU749TMB523.3OCGPYVI4NZDU@bootlin.com>
References: <DMU749TMB523.3OCGPYVI4NZDU@bootlin.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_070917_096038_C5DEE719 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Luca,

> Hello,
> 
> On Fri Nov 13, 2026 at 2:12 PM CET, Jun Yan wrote:
> > Hi Damon,
> >
> >> You are right, this is really a valid concern.
> >>
> >> If CONFIG_GENERIC_PHY is disabled, the old code could still proceed and
> >> keep the driver probing, while the new version would return an error
> >> directly.
> >
> > -ENOSYS can only come from the !CONFIG_GENERIC_PHY stubs in
> > include/linux/phy/phy.h; the real implementation in drivers/phy/phy-core.=
> c
> > never returns it. And the stub for the optional variant returns NULL, not
> > -ENOSYS:
> >
> >     static inline struct phy *devm_phy_optional_get(struct device *dev,
> >                                                     const char *string)
> >     {
> >             return NULL;
> >     }
> >
> > So with CONFIG_GENERIC_PHY disabled the PHY is still treated as absent
> > (NULL), exactly as the old -ENOSYS branch did. With CONFIG_GENERIC_PHY
> > enabled, -ENOSYS cannot occur, devm_phy_optional_get() turns -ENODEV into
> > NULL, and any other error is still propagated - same as the open-coded
> > check.
> >
> >> It should be better to keep the -ENOSYS handling to preserve the
> >> original behavior.
> >
> > Overall the behaviour is unchanged in both configurations, so no separate
> > handling is needed.
> 
> Thanks for the analysis! Cna you send a v4 with that explained in the
> commit message, possibly in a more concise way, maybe with bullets for the
> various CONFIG_GENERIC_PHY on/off cases or so, for readability?
> 

Yes, I'll send a v4.

> Reading it now, this v3 commit message kind of said the same things. but it
> misled both me and Damon, so it's worth a clear explanation.
> 
> Thanks!
> 
> Luca

Thanks,
Jun


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
