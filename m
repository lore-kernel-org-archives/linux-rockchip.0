Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5775BC28D13
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUIJWy8ZoJdFItFgpJmzQTz7b27dUQBDX3RjHezk7tI=; b=KtaqtbV9feqcjt
	6mhAsBdscQG3Ova05Qi4O/FKkkCF0NcrLRMqRACNPZ2iZeL60tx7cH/MPazejKLqxtG74PJOzMjIs
	2SyGuT4HiCYS0KA6rty+r/0/JVB4JNYK2owWuEY7Gx1cB6cJzcxLts6FxVD5sNPeDXLzV9/PuhKlA
	X6luy7kqEuDvlOwVmN4goyN6N4VhRKmUPw90mlH39gMUt0A9bE6K+sUISf7P8rBDqohQWjrT+FWhI
	eJ/dJ8u4Okaw2wsffk4O1wkCAb2noW81UNG0n4Tecj6V4AaEV+xxhrKZnYpTPbFW8aUlxX6YxuOov
	cmCf7MSNy6V5muIBWHpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQHVj-00GOBa-QZ; Tue, 23 Aug 2022 00:11:15 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQHVO-00GNtF-0K
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 00:10:56 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 2so7971802edx.2
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 17:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=wtdfqbZe7Yqg0E36IxP5GFPPnEzYXx7jrn0J5cWeV+g=;
        b=WZLujeZU/A8oWf9ITCV/CPWdkSxuunX2RshL7iiStC0FrrH0JLIPut5hG4nXk5pgWJ
         xZzYKoeR6YSeS+7DCjfiyfPh31Kru0h2u55qpjJX0uWVhQMvNiws7uwvAGeoDMqS4TNP
         yBYG2Ucji4b7oIKIdqOHZm4IWZzRVyLHbTy34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=wtdfqbZe7Yqg0E36IxP5GFPPnEzYXx7jrn0J5cWeV+g=;
        b=XD93m8sG4vKSiuMwYEkCLUJNT6WALYcaChee1YHbbN3cXRCV6osYui0zeyVx02R64s
         aei9SPKQ3766ZWEBSAwxgoQlwMCo6MVoTlleQ6/vHGQld0x4CrUI2MovHiq7RwaOthjr
         HHjntCPI5a5ZPLgXhRRasGCzOlZwpsAu43IoP2TkP/ePtjztZrb4y+iqGdF/e4CcN/vP
         LFBssQ7Ma+G4WKijZOph6aGBSL+1ve2gZ55UPg2Kb3zSBAumN0+T/P309Z1j1fs3RS9k
         MIUJYtIPL5n7WWayYV6RhYBth9EKVVskZgHQMHM9xqzS4lDg2fh+zOI+bP4uDV6j3u77
         hlHg==
X-Gm-Message-State: ACgBeo21bTVvXhrMiCtkRxN6Fq3OVRPOrOdssDSlhexbEqUvzkk9t7OQ
	4YSbPPpeMceS3NYKUJzTqlDHGPQ+WXhK+9w8pTI=
X-Google-Smtp-Source: AA6agR6ffA9Jh21BPEIJb182Ed7K1g1pM6sNAlXenEDIXaMWPd8Jq9u0wnm+4InKyrxy2ZoqDHHT/A==
X-Received: by 2002:a05:6402:2206:b0:446:9bb7:a1c0 with SMTP id cq6-20020a056402220600b004469bb7a1c0mr1340805edb.344.1661213450813;
        Mon, 22 Aug 2022 17:10:50 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com. [209.85.128.43])
        by smtp.gmail.com with ESMTPSA id b2-20020a1709063ca200b00734bfab4d64sm6776858ejh.25.2022.08.22.17.10.49
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 17:10:50 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id j26so6391540wms.0
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 17:10:49 -0700 (PDT)
X-Received: by 2002:a05:600c:5114:b0:3a6:1ab9:5b3d with SMTP id
 o20-20020a05600c511400b003a61ab95b3dmr393833wms.93.1661213449063; Mon, 22 Aug
 2022 17:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220822164453.1.I75c57b48b0873766ec993bdfb7bc1e63da5a1637@changeid>
In-Reply-To: <20220822164453.1.I75c57b48b0873766ec993bdfb7bc1e63da5a1637@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 22 Aug 2022 17:10:36 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VJ7GxRstF06aCSJH4mCdqWrLtp8_VhyhkMkxhkP9nL-g@mail.gmail.com>
Message-ID: <CAD=FV=VJ7GxRstF06aCSJH4mCdqWrLtp8_VhyhkMkxhkP9nL-g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Pull up wlan wake# on Gru-Bob
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_171054_150590_7DD10A8C 
X-CRM114-Status: GOOD (  15.73  )
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

Hi,

On Mon, Aug 22, 2022 at 4:45 PM Brian Norris <briannorris@chromium.org> wrote:
>
> The Gru-Bob board does not have a pull-up resistor on its
> WLAN_HOST_WAKE# pin, but Kevin does. The production/vendor kernel
> specified the pin configuration correctly as a pull-up, but this didn't
> get ported correctly to upstream.
>
> This means Bob's WLAN_HOST_WAKE# pin is floating, causing inconsistent
> wakeup behavior.
>
> Note that bt_host_wake_l has a similar dynamic, but apparently the
> upstream choice was to redundantly configure both internal and external
> pull-up on Kevin (see the "Kevin has an external pull up" comment in
> rk3399-gru.dtsi). This doesn't cause any functional problem, although
> it's perhaps wasteful.
>
> Fixes: 8559bbeeb849 ("arm64: dts: rockchip: add Google Bob")
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
>  arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts         | 5 +++++
>  arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 1 +
>  2 files changed, 6 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
