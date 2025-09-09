Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BC51CAC58C
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 16:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMv9nd8iozczEczbTivWv6oZ9UaiBnqkAMocop8vmAc=; b=s5MG/19i55/Un/
	vJoqg/M6hHKIjiA4gSN58RxYcXA71sE7M4Fb5O+06K9pp4qJELNQiQTkUKel1lpdnuF0J+nPX7XXY
	9kklQjdGD+DJka5wrb2qVdkhlcUN4dbCueSXcJHdriTG6mr18f13C26CMB4HrxmSYb1aLuwWtZKGq
	R/nmKEatp2n/yeajsXmLQEEbuhumay58fYVqp10X3orjMZjm6K8JcZUGG60TOEXjtBHGgwqgXzca7
	Wd10dLUaRbK/t6CkiWnXlMOUz081eWILXNP7QXb5l1+3/fOO3b4lDbhUkdov1Lwv5dCgbBnRtJPPu
	a8KmmsXBXoqyrRBu7MIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0nS-00000008NVj-0UR1;
	Tue, 09 Sep 2025 16:02:18 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvxkM-00000007APC-3TUY
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 12:46:56 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-7227bc08c97so39156787b3.1
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 05:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757422013; x=1758026813; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=//twNMkSXAG5ejIriR3b6wzGwhPGSwA6C+hPQCcT4rQ=;
        b=aQz+iMK8OAsxITsk9F1YvttHmOm7dRplzA2tSseecY6uYWI7nVcsowIn/xXYVnr5W0
         8VJ2VJyLZyDCdDsM4l9AIpPApM4DlPYyDjX9MiN7c5d+QxHrMSDFtuyaFRbTs/OS4OFZ
         Ms3hrIM1ppdjZcGvulwI4UP1G7wWQ5/Gdypc0i1E0RNSy4CMx7RFWk6EVM/sRAkx2E+e
         XCwgWHY9zZbzlegBqsxlUAaP6qVlqIH5fSwID62u1Nb5s78BzpctMmcuSTfWOgL8+YOS
         bSQgOrJ1ZWj2vUbtxEhQ8jLAYRfd0n7A5NueTTDGJ5xGqpMbWTEIMnk0RwPN1cAJHfEp
         gTLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757422013; x=1758026813;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=//twNMkSXAG5ejIriR3b6wzGwhPGSwA6C+hPQCcT4rQ=;
        b=FNmWYmw/bZ3076VaebaGoiiEm4axhATfIelSvDIQjxuci/HT5kp16sXUmJ4ihEjyY6
         SrYYXOkSWpjgy4H5aNsxdqXZvGl6XJbl6OQHuODqEB3Z0AgLmZDDuf8NoYgX9h40fh/o
         UOhOxlbSg6+/uSMAxkkcZn4EuCCqiQhtjdpMskPQhshmELVThl5gwBFxZNDyOtMGzckJ
         zqnmc9G730jbdeo93d/zitWDbYt/aqLkl0yTlaSttU5tvP2TytObV8knnnpFRHrpJi0h
         DrQTOFepM1WeiPBo+GsnsX3gvPbMcU3ABQ6Ywb8OUPT/hfijwqeQnvT7UHJByxPKD0NZ
         cVVg==
X-Forwarded-Encrypted: i=1; AJvYcCWXGJiWrb2QhG0GXJjxIJAHHJ2YRFWIJVQK92nXLdW2UeeM2w/Zv1W2odtSsdwKYljUsv562SYmc9QrFbIv7A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUP/yD5c91Ibjcf5bhkYHyLwuNs9EBUlUU++VQhnFWcVop2MUe
	114CZdKy8b0fR1TeqB6fXaiQ+ipNu7tDbUdjScWbma5obCgdiPEZyN1bSaWnh3MTkQ5Pa5cMlvA
	NciMAn7i3MgJx3rzBhSG9wYCq5YuH3D7SuiN8dt0TUQ==
X-Gm-Gg: ASbGncsDx5+tb0VZTKdnN87ad2UTLZ/YyfNQVqzG0sNr0+0GGMvALkPFNkabZ6U6CUM
	YcRMh2Df1jNe3UWws38b1kgyE+VzNP3XSzrap6XS+WnuwXql8ezLusmEFYij/aBQ7XnbBMFfofV
	2XUPVTxDrgiTH+3Yq4BBJxxogKhl5XUc5xgh7vuzhV/PAfzyOSJR/dSZ+sKdz95NUQZUr4Q6OXr
	weHrFX7
X-Google-Smtp-Source: AGHT+IF6coC5AISKfPvkfbCW5yoYd2AYD5TB7N0tawVxrBibg84uognIosWnLcfftKSvGrvcJLOCTDCRDYDlkUXV5Ag=
X-Received: by 2002:a05:690c:a015:b0:729:5b86:551c with SMTP id
 00721157ae682-7295b865879mr75579857b3.0.1757422013421; Tue, 09 Sep 2025
 05:46:53 -0700 (PDT)
MIME-Version: 1.0
References: <20250902-rk3576-lockup-regression-v1-1-c4a0c9daeb00@collabora.com>
 <3556261.BddDVKsqQX@workhorse> <CAPDyKFpSY+FeKh7ocjQ_nGNZA5+3tWAL8e7ZNKXKNFP-yoiu_g@mail.gmail.com>
 <1953725.CQOukoFCf9@workhorse> <CAPDyKFofhy5wiNsHUgdtzFwGtO3QPqhVuu1KsPLBWHF08JzqyA@mail.gmail.com>
 <dr5qspjhwxaxutiilgx4rvfbrho4bijoll6lciv2bc7c7e7r7m@pgmxztqje5ux>
In-Reply-To: <dr5qspjhwxaxutiilgx4rvfbrho4bijoll6lciv2bc7c7e7r7m@pgmxztqje5ux>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 9 Sep 2025 14:46:17 +0200
X-Gm-Features: Ac12FXwo4_-4PiymUqOxTae5p_ZC6h14IgeNt4w4eS7V2OTdZjnLF13VxirAI10
Message-ID: <CAPDyKFr=GwJ+cO3cW4Ed_LsS=q_JtuuQPDweDpLgDO4hBLFXUA@mail.gmail.com>
Subject: Re: [PATCH] pmdomian: core: don't unset stay_on during sync_state
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_054654_881960_5810F9EF 
X-CRM114-Status: GOOD (  36.44  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 8 Sept 2025 at 22:09, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> On Mon, Sep 08, 2025 at 03:40:24PM +0200, Ulf Hansson wrote:
> > On Mon, 8 Sept 2025 at 15:14, Nicolas Frattaroli wrote:
> > > On Friday, 5 September 2025 16:27:27 CEST Ulf Hansson wrote:
> > > > I would suggest implementing an auxiliary driver, along with the
> > > > rockchip_pm_domain_driver. The main job for the auxiliary driver would
> > > > be to get the regulator in its ->probe() - and if it fails because the
> > > > regulator isn't available yet, it should keep trying by returning
> > > > -EPROBE_DEFER. See more about the auxiliary bus/device/driver in
> > > > include/linux/auxiliary_bus.h and module_auxiliary_driver().
> > > >
> > > > Moreover, when the rockchip_pm_domain_driver probes, it becomes
> > > > responsible for pre-parsing the OF nodes for the domain-supply DT
> > > > property, for each of the specified power-domains. If it finds a
> > > > domain-supply, it should register an auxiliary device that corresponds
> > > > to that particular power-domain. This can be done by using
> > > > platform-data that is shared with the auxiliary device/driver. See
> > > > devm_auxiliary_device_create().
> > > >
> > > > Furthermore we would need some kind of synchronization mechanism
> > > > between the rockchip_pm_domain_driver and the auxiliary driver, to
> > > > manage the regulator get/enable/disable. I think that should be rather
> > > > easy to work out.
> > > >
> > > > Do you think this can work?
> > >
> > > This sounds similar to something Heiko suggested to me, and I agree
> > > it could work. It does seem like a pretty painful solution though,
> > > in terms of needed additional code and complexity to basically just
> > > tell Linux "hey you can't get this regulator yet but please try
> > > again later without our involvement".
> >
> > Well, I would give this a go and see what you end up with. The nice
> > thing with this approach, I think, is that we get a driver and can use
> > the -EPROBE_DEFER mechanism.
> >
> > Another option would be to explore using fw_devlink/device_links, to
> > somehow get a notification as soon as the regulator gets registered.
>
> I think the main pain issue with this is fw_devlink actually. The
> power domain consumers are all referencing the main DT node. So once
> it has been marked as initialized (of_genpd_add_provider_onecell()
> calls fwnode_dev_initialized() at some point), fw_devlink allows the
> consumers to be probed. As the DT node must be usable for processing
> after the normal pmdomains are registered, this means the consumers
> for pmdomains with "domain-supply" will potentially be probed too
> early resulting in some extra -EPROBE_DEFER. OTOH that should be the
> status quo, so probably it does not matter.

Right, the description in the DTS seems a bit odd to me too.

Although I was under the impression that there is kind of a circular
DT dependency here somewhere. Or are you saying that we could
potentially allow those power-domains that are described in
child-nodes to be registered later-on - and after their
domain-supply-regulator has become available?

>
> > I think those kinds of dependencies are better solved by using
> > fw_devlink/device_links.
>
> I think the regulator dependency tracking would happen automatically
> when the auxillary sub-device uses the power-domain sub-node as its
> device fwnode.

Yes, that is correct.

Would that work then? So there is no circular dependency that we forget about?

The pmic that provides the regulator may be behind an spi interface
and the spi controller isn't part of a power-domain that consumes the
regulator?

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
