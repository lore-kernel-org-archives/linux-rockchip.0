Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB62FC98309
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 09:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bk5mAG62FxAr4ZRsXGY6UST3wXuAw3m+HVfnDAq+Yzs=; b=ZaFOT8jfdC23Qn
	4HaX03sOL41EAjrSP2gBpsmseWHW+ZM7b/BFIf01HeTQpSOICb717imKbitos+ZN2SZ7cVlDQfm3D
	NBUMMjSb0FzjQDenHskaQEOfJN35TYkU+JHP5/Isd4Vlnvlt5MjxSV68rB3S4w43MPfN9/a0wazMY
	OAQlCpPKV15Yiiv3A3JRZDMnpTYsLtg32ml4DeYT4+CoXB8fAqERHppwxBcWsxycGWQWf+rgk5Bis
	Wa3bKPkO/EUOrgEpaLxdHFCim7uapbcXKapgfv7oxEbf3CTlcD9P7vYH/VGPpKyQGt7FRJfIO6bOS
	jUSjPNZMtZCZtAm4rYng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9JWR-00000007miI-3Gbb;
	Wed, 23 Sep 2026 09:44:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9JWQ-00000007mhO-06zT
	for linux-rockchip@bombadil.infradead.org;
	Wed, 23 Sep 2026 09:44:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=F4OSOZ6QNkL9RkPJ9OENWBp9oqWXQ7z1vT7cr50A03I=; b=IaLe2VSnqrjzADvExENHTG50hk
	jQ6e66jgepLnGqar/niP+1Bg22mfXW0XgyitIatcPtsnHAGcWLXsAAPclZ7x7/JYxqBcc8w1BnQ4l
	2kZaDmM324WKclG02zSNwfrRJkenOF6TDLBSMnQIXMyCAcmFVQVcRdYewM+30FcyHmhbMNA20WIQh
	WKMcae3WRNzzh/z75t8dFkbjcQspl5spS0GyUUggMMjuT8Nki/94l5U3ac7qTUruAbt2M2FFI23s1
	SkL+Tj7QWTq+9e9gh4sYn5GFtY0DJWSrkAfIYyttLVeylfyO9Nvj6UCadkTyKeJ1I8YwHWO0N7nGu
	I1M1ONZA==;
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9JWM-0000000EbOb-0Mnn
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 09:44:12 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-482e1b429f7so92482f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 02:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790156648; x=1790761448; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=F4OSOZ6QNkL9RkPJ9OENWBp9oqWXQ7z1vT7cr50A03I=;
        b=nsSWw36BS9fHoz0rmkkBfLULB5rTca4Whl4B/GIPVOhkN9UUfKH/XN5LPEtcjk82oI
         kV7dMKtoWC9jy9gBeYKs+4kGt+NWs1B8UltxZknAy5fW2Bx+BV2YKPhRNJLVjb79Ht1J
         Z9DZR66XjFMSi3V3F6agmQ7u0qXfgp2VhG44YTk7IBDr+uswQAj0GYo6vT1w/EUPFjO0
         EUsH+C04JfSvOMxki0bMNIs87H1BbnkJsZx0jdp5QOTiLSaTgs32UdoYq4z7po3Bqniq
         UdCFPKtDQUdMobnLRKGjW7TATcOAqrf+62t2e0Z4IOpAA6YkbYYkKnvkWGQpwGU2flW6
         3S5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790156648; x=1790761448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=F4OSOZ6QNkL9RkPJ9OENWBp9oqWXQ7z1vT7cr50A03I=;
        b=nZMtYzqJ3IGUNXSZ1ydkZ+EZN4KtYSX7ALvytJrWAgV24xuAGZ2LbKslWDhdnUs11c
         Mx8QYP1GG2WvPXgKgCxWp8J60JtnDogzYEm0kNw1TZ7u2oCdjNR368PYr0IQ6Opr7RW4
         q+wFoZhb1JEhijZ3tZqQMyaaureuyIYEm77x+ybjTOhSCQ96YZllH/6PR6jGHbyLiY7N
         FZgnqTGK2+iHhu5wAnTfOh0s3FWwv7SRP/7+wskcVgBjcCv7M96+v13D5ly0wN3n7I1a
         77OibTR1b08hDjxNdWiS9XMzqOTMJN34hdmpb/VHERMOw9AFTgBVJaf0mG8+61xIfd7i
         mO5w==
X-Forwarded-Encrypted: i=1; AKwUvBzxluik6iZ+uxB5cyqHcTqqmwRq9HbgadDrPT39p2iHSg2d+6dM6IfmDNcVAvA5rvh8ua084lM4ImZjfIEl3Q==@lists.infradead.org
X-Gm-Message-State: AFuF++nF9vTGCMcnDywXcggiu2UNb8DEdXAp4es7pL7qqy5qjk9kIO7a
	1Lv2cyzAZrA67rryGNcYFrTQuuhThPFcPZfUYXiUN4oIiqmUPmI510xr
X-Gm-Gg: AYBFou1qGlRbmsGkJhnn6Y4PDO/4m6Kb7wKKfN6tyuskWJMl13Q2thiCR2Tb58u7/d7
	XI1cMkbh54pt5p5L1RQ8pmRQb52V8xqvGEcstZVaS83FKj2cTPa9y/LU8hO4NQS91gH0QctRw6x
	Mlr3G3V4MvOrbQpbAsvMHN1o31USFglH5oZcRBHtW2bLTU8OkhHd4EwmQEv3fu0okKd8vb8+70R
	EwkuCeM14ukWPWsbXq3dhD8/0IpNtStU9Dtc1gsOZSc3EVOcDIFSV/m7bu0CYTkYLuuulSATJnR
	vnbgf52wlskgeCYWOYfhnkYBMD3gD9Yi73QSzFrov9sOQu5i5D6jDM/GhXrtFBrqhBj+W/FXZY5
	gnCbyC+ifM05Gw3H3NTPyE1kGcdPbQHtJdyHcJ77k4ElnSRXLTRAu/Igc75Zzg3o7j0ZGHaP4EC
	BVptJqvSw4CoYmCN3kqlTDu4Tfsoy3U75bTON/Ldcnb7v0Zb1cU9U2QudlzLrsp607VmXfJnGpG
	lVcrirqt3KxUw749jCioE6S38mqAaVhdY7vltGUdXhb7LKUWBfxiBQOTdo22Y0jr1ZnV7g1vjmV
	mpM=
X-Received: by 2002:a05:6000:41c2:b0:487:240f:b0b6 with SMTP id ffacd0b85a97d-48866fec88emr3319246f8f.0.1790156648286;
        Wed, 23 Sep 2026 02:44:08 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8F4500D949869966507951.dsl.pool.telekom.hu. [2001:4c4e:1b8f:4500:d949:8699:6650:7951])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48867b49661sm5535223f8f.0.2026.09.23.02.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 02:44:07 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Diederik de Haas <diederik@cknow-tech.com>,
	Rob Herring <robh@kernel.org>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 06/11] dt-bindings: npu: rockchip: allow DVFS and thermal properties
Date: Wed, 23 Sep 2026 11:43:53 +0200
Message-ID: <20260923094353.20318-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <DLMKYI79QQRS.28Q4ESQ974BU@cknow-tech.com>
References: <20260922080114.44662-1-royalnet026@gmail.com> <20260922080114.44662-7-royalnet026@gmail.com> <20260922160602.GA3529337-robh@kernel.org> <20260923085755.16219-1-royalnet026@gmail.com> <DLMKYI79QQRS.28Q4ESQ974BU@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_104411_249661_E87C052C 
X-CRM114-Status: GOOD (  10.09  )
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

On Wed, Sep 23, 2026 at 11:15:22AM +0200, Diederik de Haas wrote:
> On Wed Sep 23, 2026 at 10:57 AM CEST, Igor Paunovic wrote:
> > Will do in v3. By the same reasoning I will drop 'dtbs_check' from the
> > two DTS patches, 07/11 and 11/11.
>
> Doesn't the same apply to 'checkpatch' as well?

Yes, it does, so it goes too. In v3 the trailer will only name sparse,
on the patches where it was used, and the DT patches will carry a bare
'Assisted-by: LLM'.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
