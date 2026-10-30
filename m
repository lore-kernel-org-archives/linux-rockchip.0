Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BFB606A31D
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 13:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Blx4W/J3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=FDCj1S8p
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4/vsnarik7lK5JL1W7QbQ76xJmJK4d3mheTo/NtKjBE=; b=Blx4W/J3zNxM3REcQhZEQw4l+u
	6JIN+KE+JjC75pzV7j1LXEdXWUFR0RoIOhsBMhqVTyX+iVBFNjV/iEYxMJ1h2WpyVslCBUgT3/M0V
	3Z5fH3TNwUZmTjQQlG1sK/lO7tgHEyRhdnTxaf5ocJpWnd+EKfrsM4G+3FwDoZC1PkpWYF/FuDaKc
	QkPLUqA4im0cuF2O9IVQb5xzmgvMDSGkMm9I3zQCbHksfM3SH+Gby4A8J+tDqVFaOXzz2onMTBnRu
	QXLYS0jV1SFSBgB+GS5jKOIQUR076tRXFmqgdknpLnErRjmzDSBAH+Ef3MZ4qlHLqIXkWdOJcfg8r
	e755DI6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMn2Q-0000000Bn9D-0l7j;
	Fri, 30 Oct 2026 13:52:58 +0000
Received: from mail-pj2-x09.google.com ([2607:f8b0:4864:39::9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMn2O-0000000Bn8g-0teI
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 13:52:57 +0000
Received: by mail-pj2-x09.google.com with SMTP id d9443c01a7336-2e7c8213b09so2571875ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 06:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793368374; x=1793973174; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=ZjCkrPgZkmpcI6klO5ZNTUrNouiYanWFs0XqwffC5jg=;
        b=FDCj1S8pwlffUfuys2piZ+a3/ctbMRLqXaQX6ro/fwZ0p8pnQ7ODH8cwM/FFbY0H4z
         uAi9S3uc/xh1ajz79leu+evPKsKZ//N6S0gwkgGjy2JIsUQGQGXWKYZmAdMdv8tTvPRm
         ylN1MDRf7GO2PNwq4jZliBOLolhjiOQZCEmALzP14TBGBSZJikfvJgKx2MRuYlzpJstI
         NSB+p+jgxa77EAenzVjekMYT8r0GvndB8GT700SPUTtGcFX2NLbaydaBRI9+qFnN2+b5
         ylnCQpWON/6/TJ6ontk9pphV4nJP95IukrBpeITD14TyyzlbyMZWlk/Q9l5hWGCVvZAk
         tIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793368374; x=1793973174;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZjCkrPgZkmpcI6klO5ZNTUrNouiYanWFs0XqwffC5jg=;
        b=h5ZvXg7XPByGomx3FBiRUsEWzynM221TU20N/HMubSboxb/3imeOfnH2+1e5kRXQ8L
         CqB9RfgQALFoSSfY8mqApxV5dpAtuKntKmTL9wj0bNDiPknpNfaGy+dmx3qXRthRSijS
         BeAmeLsGCw7ntwiP7plZLZDu9kqMTHSiB4BYFcJLWB51jMQWU+xu0bz8gNicHOmU0hFR
         L1gJVhHqSuM5K2siPDlHhCeDpU/pMHaNi70snrUEr9d/ttWGb/msfcYskcCoLr3QrJkX
         vjMVqit+pWO8aIi0snI4zGpvLj0YiDTSNTgSZJgqntSlu/34Jr1vHSGw3F9jrJZhsl6/
         uaTA==
X-Forwarded-Encrypted: i=1; AKwUvByD6A3WSGyUiqlwHgzvIK2CJgFh66Y8aY1CSza2zR1x55vWnidR1c5j8l/0ITdpgpewB4tSL3wWLdrVU6WIXA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIEK9CbMS7jy/YIaYO3IgdetMBKZrGmvpqZjdVhy3aNIQcahRNs
	HQxyau+kGkcCfdwCZpzPYXwD3uG9u9WqnwQUk8MevmxswwukYVsqlOmtwW1+cQM0N0A=
X-Gm-Gg: AYBFou29pdn9hSE2QI8Jh+lJIGSSH0q7s3pi3+pbO3EBKy/bko34MwbsisnAIo1YxIN
	gfDuYJU+knTnLqONOQ4qalzBKOzhcisC4q4Afx2SeS5acB9rqHR7gzidwg8PIrxB4Ap9md8WkpW
	Cgyoal9saeBNRs40YL+y/wFu/HBoG3XqBJIG5EPYlL4tt6Pbnn+43/vagjak4noOpDVEMy+OvV5
	5F0x25tx8ffr79xKKDOpb2Rw0IStzpcRzLCag8NSRkHkyXdmETWnGvQPcmTUp6e9vwsPYCBFThh
	cPhZKlvG9U8kZNu645CyDIeSDxmu0lRdWpH/mqaV1fI3z4EKVDQ/AgF2SQsLfJtj1uGCUc/30dQ
	OAMu1CW+7PdozK9H9Hb8a6SeG/9eDsuvgXh9ZMGdtKzyTOsw2ND6x38ueD+0t5kaXkoWCjtWY87
	BkyPfKXCsLx8+xDiOHImkccyuhTpnXtBHCMVJpW30KReo1rE3eqIgBumL7ShykHIlxaECVU3TQB
	m3u8vbms1HQ3uJOrZty5xi6ZK7+nqHblYs+36r8k+O7UcNN4z0KpxBhoSsmsxMVeAdwlXJNJEcc
	23B0dIAud3ydoeOD9ET4aCCCpwbXP+SelMofd7E=
X-Received: by 2002:a17:902:ffcf:b0:2e9:a782:bb82 with SMTP id d9443c01a7336-2eb364e93afmr22499015ad.54.1793368373608;
        Fri, 30 Oct 2026 06:52:53 -0700 (PDT)
Received: from ehlo.thunderbird.net ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eb38e9633fsm7600865ad.0.2026.10.30.06.52.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 06:52:53 -0700 (PDT)
Date: Fri, 30 Oct 2026 21:52:48 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: Jakub Kicinski <kuba@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_net_v2=5D_net=3A_pcs=3A_xpcs=3A_ma?=
 =?US-ASCII?Q?ke_supported=5Finterfaces_authoritative?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20fb8d2d-a20e-472b-8f32-3fe2fec9a425@lunn.ch>
References: <20261029102728.3189359-2-coiaprant@gmail.com> <20fb8d2d-a20e-472b-8f32-3fe2fec9a425@lunn.ch>
Message-ID: <A049E9C1-CE52-4B04-8BD4-44962D008F6D@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_065256_262062_92A3787B 
X-CRM114-Status: GOOD (  21.11  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On October 29, 2026 9:20:56 PM GMT+08:00, Andrew Lunn <andrew@lunn.ch> wrote:
>On Thu, Oct 29, 2026 at 06:27:29PM +0800, Coia Prant wrote:
>> pcs.supported_interfaces is the mask of interfaces a given xpcs
>> instance actually supports. The compat table describes what the
>> Synopsys IP can do in general, but a specific integration may support
>> a different subset: the RK3568 XPCS supports 1000BASE-X, SGMII and
>> QSGMII in hardware, but does not implement the C73 10G or 2500BASE-X
>> modes that the Synopsys compat table advertises.
>> 
>> The Rockchip glue currently advertises only SGMII, since that is what
>> the RK3568 MAC side supports today. 1000BASE-X and QSGMII can be added
>> later when the MAC side gains support.
>> 
>> Without narrowing the mask, stmmac_phylink_setup() merges the PCS
>> supported_interfaces into the MAC mask with phy_interface_or(), so the
>> XPCS would contribute 1000BASE-X, 2500BASE-X, USXGMII and the 10G/25G
>> modes to the combined set. The MAC side forces the phy modes and
>> phylink start passes the mode explicitly, so this does not currently
>> make phylink switch to an unsupported mode, but the combined mask still
>> advertises interfaces the SoC cannot use.
>
>I don't know this code too well, but something does not feel right
>here. It might be due to the way stmmac does PCS with phylink, which
>is often considered broken.
>
>What i would expect to happen is that each piece of hardware indicates
>what it can do, and then phylink finds the common modes.
>
>So maybe stmmac_phylink_setup() is wrong when it ORs them together?
>
>Maybe look at other MAC drivers using pcs and phylink.
>
>      Andrew

Hi Andrew,

Thanks for the review. The comment is too terse, let me clarify the
scope of this patch.

The RK3568 XPCS supports 1000BASE-X, SGMII and QSGMII in hardware, but
the Rockchip glue advertises only SGMII for now because that is what
the RK3568 MAC side supports today. 1000BASE-X and QSGMII can be added
later when the MAC side gains support.

On the stmmac side: I agree the phy_interface_or() in
stmmac_phylink_setup() is not the usual intersect model, and it is one
of the reasons stmmac's PCS glue is often considered fragile. But the
DWMAC binding requires phy-mode globally (snps,dwmac.yaml), so the
dwmac-rk glue gets a fixed mode from DT and phylink start passes that
mode explicitly. The OR-merged mask therefore does not currently make
phylink switch to a mode the SoC cannot use.

I've only been touching this area for the last few months, so I'm
guessing it may have been intentional. You might want to ask Russell
King, who designed the original logic, for the rationale.

This patch only touches the PCS side. It makes supported_interfaces
authoritative on the PCS instance, so xpcs_find_compat() does not
configure an interface the glue has marked as unsupported. Reworking
stmmac's OR-merge into a proper intersect model is a separate, larger
topic, and I'd rather not mix it into this fix.

Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
