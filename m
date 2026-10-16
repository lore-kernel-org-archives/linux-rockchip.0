Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A026CCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 11:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7fdX7kTi8ZCfF7W0Epc376sZXiYUNlcc9C9fhuTfqI=; b=dd094U+cCsoG7U
	Vst5u7P/Jls7gpG9suKbTscZTr9G/s38BPCi+F49cOVWT3j0YEh8Bvuy5UT3i0JMf1lkhmcQNUui3
	sPFILiMxG92xH9qZ3lf2oeJud9cxaae3BGJY2JHaUCN1S0I6K+GCepM7uqrpUAFAJTSoQnr0knbtG
	KEm9NZXFxszan4P6I0muxPWnY6xdPcrp7cGewjVIMNnliHsF3AhNByCKS+ubJ4cLo00XHzp+VCCyb
	DONpbCuqrFUwNzI0u2GDqT/8IjjgXTZR9n4baRXp60mtVDL0HMMRKuyPb0CxhCy8458bLm3uRj0QJ
	z13fohIvZVS0IE7mMDNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHg4g-00000002lTP-1fqc;
	Fri, 16 Oct 2026 11:26:10 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHg4e-00000002lSx-2aXe
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 11:26:10 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2e49fbf92aaso37701395ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 04:26:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792149968; cv=none;
        d=google.com; s=arc-20260327;
        b=F/CwVmzqNfmOjaTDhzoZzw0Vmw2ODOdH73A5XLQOt5EAM8BfPilJgWpKzCWeDS8sru
         iAjZarIOWxXmnu/j4pDHPRo2NYyJDCYsh4gIu6XbDg+SEBQdgfLFB1RkOUSsPgKGZMI1
         atEvKtEoeYLOR9wOlpD+UVK/dgolXFEnFMuGXD6Z1RCH/KAqZuISZkm5jLLZZX0VVSAJ
         SPgBTtulj9fyPRf2mKdD6sHk8qPM/z3bE51AYqvrI2CY5o6b29Xbi0AMAr9yLuljJk5O
         JDeoBJmpd5DFjEbnDgkYAqMW/YkGwjpl2wGw1ezdKYx8nizbK7x8ziywYXRzrKFCE2yc
         rPig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vApPRxEqpGQADna5mwyiV+wtnRS+6fLHQ7GBxAw9kX8=;
        fh=NhPLVUEAomWqypRg4TVZ3UtT7crF9JmZ5JfmYIz1fRQ=;
        b=CXiRdFwlSRdr+5WSuweaKgUyuMvRns6gEYXsiyKFsxmppDq9gKA6jTxbrGTRqNVbuq
         7T2FyWOWTbvxYN+wHm0LrgP6bg6WTD2IbY/6fsRhT6v3TxfgIdkhFnnpOWw3nX/ACYUc
         170JbRToAIhaTuBpgTbY3eGYQ/cyMH/vsGiixYZl1x0s9adcZFMaNq+QpRQ7EibA4KMC
         FMVK9zDzrNkpdLJdhXuQTrsah/diH3j4kLEpkAzVj8JEx4duccrzTH02Zvap/ZpFF5qn
         QQkNti4Lcuj/Q+yEjOKW+6LRFn3dxt6kVGXAF+tI0a8QjyX+yQbuQQHW+hmJjdkwtLQQ
         IRiA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792149968; x=1792754768; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vApPRxEqpGQADna5mwyiV+wtnRS+6fLHQ7GBxAw9kX8=;
        b=VlKeLgrmtjoHVAJqKtBhFFWv8eFJeFwxe0QfynEecUf8JOzR41OcgXBShw5OoX3l+j
         GBpGsiILNijTliLRIBRdkrp+A7uEg0WYowTvJfXdxW3jv9erAeojNs23JWZ98u8BDbo/
         nTJiWh+J1vOSq01eeMToh0LJyzSOF4O5FPqD8H2wctPgItOAizkjFDCJ3LT6UyUFW7+/
         Pp5kPVPmk3FmBvHXvD7aIEdFvnb3DnqmdUpIHpcjeN6OAj8CBhkBNJijz+D+i80jdo7+
         2bhPF8XFmkSzxR7cA/QH69rW87/6+b8eK6ZWNLQMVpc9/Kcf3QFGa4hdnRduxnuKZ6b6
         1r6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792149968; x=1792754768;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=vApPRxEqpGQADna5mwyiV+wtnRS+6fLHQ7GBxAw9kX8=;
        b=Xxd8Lg0mDSUlgiMsRcVA+vspvNUWYazqJfgoKN86QOnXLZU1swcWpKV+cWk2Fb5Gt+
         vrqwFu0G9Xh/pDheLmYRPJP6ztdtGMgWAAoO3dFLU3nUjqQTyBm5KVbJd/t2ic/3CIvJ
         m+l1XrSVmFtWqKdNQ5m0TEJuqc403w5rjTVVeMHkUJoVSE2Coms9MRqSPTBNr5iRxMoS
         9gfz2CR2mWBoTWUp3JNOaMPuhFxmH2qSSOiB1AUCnvO9I6p8ITao/9wqRbJw81cpVoYg
         xk5uOaq3Nchv9e3moL4K0RKA7VDvCumtst8eNqOdOx6QYVWxkUyxMpkMy0N7Nn+Cvag6
         QaTg==
X-Forwarded-Encrypted: i=1; AKwUvBxuttcHLVj5UCy7nUbPxLzHF2nPS7LxVZW8rfeHMXKMZOjdj/ysMbBkW0BEJF8g9XiftvRiRo5ZkSLIRD09CQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYJvd5kkVxkCPjKXmVxkM7naDe0cacvccYuLrDfLyWEZIjvYJvvr
	Y/NjeGzN+nBOMUjjEr8bslos5xIcZzoYDAJqdaCyYAK66ojoX0nHVDn91eN9m1FQnYZfHJAr0Yn
	ENeUDpln66SFqr9QR9Q3jTSVJSc6hESU=
X-Gm-Gg: AYBFou2vfla1haynC5bOtQu3exRrlKVJl3woqOJI4yOpsyW+NjzVbbOwoOvJx3mLZ/c
	T1866OtEgCootS1zsl+b9cxU890ogVYHrQJYrhIiP/QgfQXMN+vFd08NYc22F78FvsaJxiFH0N4
	kEo9KdqfbZiO9d+Fn0OMN3eJFBQIUro6e/6fuG3UlZZXXe0LPY2/mQp+bJ0TFPWlnDpWTyH5RZZ
	Sov02QX9eyB8iCs2tC8AJSdjX7ChVUB8BkLMJa4i/t81GMgSybJoWPYfg/baOS7z5sWng5/E24t
	PrWEyqMM2ZLPwoeZ5WZ1O8NpjsuQKZivQQYHvKlhyU5Oyl4DDjU9hxiBO3jVuRV7tdtq3MlHW93
	yYYzJxc/asBy5jaAphbHlyjLB3iBFmVNxrQ4++aStUNCNCsNkPG2f9q32mNekhWV2UnTy
X-Received: by 2002:a17:903:11ce:b0:2e9:4e83:1979 with SMTP id
 d9443c01a7336-2e94e836527mr62789995ad.32.1792149967287; Fri, 16 Oct 2026
 04:26:07 -0700 (PDT)
MIME-Version: 1.0
References: <20261015014324.5569-1-phucduc.bui@gmail.com> <20261016040048.506531-1-phucduc.bui@gmail.com>
 <46a96bc8-2ee7-4c6f-ad8e-94321f8b9630@sirena.org.uk>
In-Reply-To: <46a96bc8-2ee7-4c6f-ad8e-94321f8b9630@sirena.org.uk>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Fri, 16 Oct 2026 18:25:56 +0700
X-Gm-Features: AclHuK9bobvuHZz0ZvKJfKfhAJdiG3c7XQlmqU2uHEyUuNfyFRrkKv-rn3SiKZ0
Message-ID: <CAABR9nG8PeQS4GBGwENfHTRBUnroKYQiEu29iztix+py=Arprg@mail.gmail.com>
Subject: Re: [PATCH v2 25/25] ASoC: rockchip: rockchip_max98090: Mark the link
 as started on success
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_042608_663802_710E983C 
X-CRM114-Status: GOOD (  18.74  )
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Geert Uytterhoeven <geert+renesas@glider.be>, Chris Bainbridge <chris.bainbridge@gmail.com>, Bard Liao <yung-chuan.liao@linux.intel.com>, Takashi Iwai <tiwai@suse.com>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, wangdicheng <wangdicheng@kylinos.cn>, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, u.kleine-koenig@baylibre.com, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Mark,

> Can you please resubmit this as a separate patch as a new thread without
> the series numbering?  This is really going to mess with the tooling :(
>
> Please don't send new patches in reply to old patches or serieses, this
> makes it harder for both people and tools to understand what is going
> on - it can bury things in mailboxes and make it difficult to keep track
> of what current patches are, both for the new patches and the old ones.
>
> Series numbering only makes sense within a series for ordering, if
> you're sending something separately to a series or a new series then
> preserving the ordering of the series just causes confusion.

Sorry for the inconvenience.

This was patch 25 of v2. I had only managed to send the first 24
patches previously.
Patch 25 failed to send due to an error, so I sent it afterward to
complete the series history.

Link to v2:
https://lore.kernel.org/all/20261015014324.5569-1-phucduc.bui@gmail.com/

Since you had already applied v1, this patch does not necessarily need
to be resubmitted,
so please feel free to ignore it.

Link v1 :
https://lore.kernel.org/all/20261008103831.542533-1-phucduc.bui@gmail.com/

I have also sent the incremental changes in a separate thread, as you requested:

https://lore.kernel.org/all/20261016040946.521195-1-phucduc.bui@gmail.com/

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
