Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9310ACC6B1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 11:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+5Xd4qjm2QhgLIhlVCdmq8CC83BR3vEorz1FUxlkls=; b=UVxLeHheBv1yMU
	FqDlk86kvmDginF6UQkjBzNEkXW9FrUGMD+NVpbwCzu37UKGTXnwMxAzmD/qzcL3S+upAWOUQTwIN
	ZmXkoaIwduhNHycXrEiyycjjce1pDDB2BwjuxpWvfllWA2l/rKViQXKFO0dCtLJRkvC9hRmWt2ELa
	7mnDVQ1Tf61XIb8sjdW48lhTjtVqRz8444Y1zyHp1Rnd6OPvojCKaXjpkkS2Mxh4Sk3AfiWwEzYo3
	oZ56N/CRgMe67ZeghohPb1YC1s9qitLJLxD9FPAqugDvQAdQ4tfI6FVw+d6Pi71yA+YR/EunfqUcN
	bOV48FlYLho1iiE+rhrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGxNd-0000000FMvG-1x1R;
	Wed, 14 Oct 2026 11:42:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGxNb-0000000FMuy-2o5f
	for linux-rockchip@bombadil.infradead.org;
	Wed, 14 Oct 2026 11:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=SExSlJOtRhRzpIj7eRr0FWRac1iKGklAYskw7N+LI/0=; b=IQvPzkc5OHTMlj+ze0xZGyUuKz
	PBrku4ntTCVSQKmpDGBlyTSUvDoNoBQ+3J2bevDffZiMgBdAYlk7Vxii/55KK39JU+Fw2FhAHoWGP
	DyAgL72ckEabErOcAw7WDZijwAGGSZY7EQ+TErSVK4j4EFNpkX6MiLAxKd8mjG1glJSzOEbbrBn5w
	4N+OVWH+v6inGKYMY2sGqsLg/mu4O350AzpSQcr51mOmiUBmVQC9VFIsUiy2I999JunspgjZcu+jl
	/0T2g7akO4J0WWZAr49qbIw+0Tbs0NzrYjOQunQPwxdrn1sGq4AcoHTmx4IGfbrpQz8Evzj0e957r
	YEIZfCbA==;
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGxNY-0000000Ghnw-33Eo
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 11:42:42 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2e8f2c3ad6bso14835935ad.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 04:42:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791978158; cv=none;
        d=google.com; s=arc-20260327;
        b=GQ7Dpr8S2zBlkubJoVVix1ezLZZEHJBtAPd0TaqqeF1wlUoRTERbaMwX9OdH/IeDkS
         aZWAkXm072nIFNyQxXc1omGqr9snmM2En0ZJzoVNrPwR36pwywxDYkgBNQluE84Yszh0
         YK19LOcAMZYIerVJrqPDJrVRfs31+iSyemYmdrJn1RoE00sqaMUojpUL+6C7XS0cG9SI
         FiwGw9XEzjTjNTowxZL4L0to9sSPFgUsE514LfcOuK0+Cy+FXdexuyaiiSjbjU/vNSFE
         vPu4iQr8K4hGpgbyFEQ1bb6Sx4F41pa94eLYuEkm3G3mG2UDiTWYh4Tmisl9/xcd1Bki
         hlxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SExSlJOtRhRzpIj7eRr0FWRac1iKGklAYskw7N+LI/0=;
        fh=CkBgJIRSJXBufGRptdc3g5jGLltXNwbNqvOrcE8e+hI=;
        b=seUfkeppO0EqHys0+RhdSJ/oyICsG8S1S5jo493s6pxigpZBx/epwK0iDTq3MklqUO
         Is7h9j8FlFEAx18vU1qHvWTZe7ScpDW2HkhxfHwOCrzY71smSpuh4J2PP0W1rYSSDEp9
         6pzx30w+35Z/TVj+5Hie3zmkIgVvZbSsMUchD0F2ZZKehCqnLKlaLvUxvAWh+bGNODKR
         hx4EEpdV3cA4wh+/RsDVg8WWSvJEy4XsWg7sVfZ48PW3pk6eCIQ+XgaRKiG07ZRvpxH4
         cc4CruNF10GtBIdrmck7hUobJleQPeSDCrrodTazYwJ8kD1paXIfTwR8Y50RQXUvLDug
         U17w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791978158; x=1792582958; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SExSlJOtRhRzpIj7eRr0FWRac1iKGklAYskw7N+LI/0=;
        b=eLwjZp2i5riVHaCLmaff593kiB6ctJT08ypF70lFsiUJ8e+Kh/SKIm0NgSFVAWX6bu
         dggpKkvgU4aO0QLl1lYziJf9IBAHtJD7akhABIY1pVYSrHy77zlquS5pXNXk9M/xcgb2
         m6HoABamj4dy7bhAXKEoT+9z4Y45tXU1CcIQlK21qCIdoR4z8PlLPo91zcTZJKaDZqSm
         0SSqoKCCysLu1pEcqG1PML8JGKvnIR+68Xl/TrHjyGYep1ZLb85S7b44YVTuCc9awwa2
         e1XLVb6ZlN9S8401qhYx4DcujpNwlMRGYuhw+1xiuZO+b69RswAS8YACeJwcPCTR7gLU
         KPOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791978158; x=1792582958;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=SExSlJOtRhRzpIj7eRr0FWRac1iKGklAYskw7N+LI/0=;
        b=Z3yZuS784PFh1mcMqfJMtLk6y89giqALkvreHwzXqvEdGVLJxAja1hmHFx9w4AEdKW
         ykckT0iZ+WM/OEgeIIRT+nt0dKxOmuIcE8kQ/yAUKm3EokgJJfxYPSWD9RgSL2bx3ChZ
         A2ilKYwJzcqP2EUCQV7E/XV1uLs4/L2MQqQyPBtJMP40JtihMl7gukaIKxsjuN0N7Xt1
         WUcm141Ki5X8MOjQaQZrPZZyTYSH8ckckHG5i+MQ7wORH+Zp2GsYcIREG0FvgaF5qptr
         mu5zq5fFFLkkj5REvPhXLNXr4+pOjwj5//avD1yDI+rrkyN6U1mFNkYydV1mVYLx+HQs
         yYjA==
X-Forwarded-Encrypted: i=1; AKwUvBzA4adQg4pbSXoV07kq/oEEmsCFnyxvsgIw2fCbZywz3pmVRM3D1L3x/TLytpjIuR0rFXNPJe4YzjyBQ09cYQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYIW/yaO93VaZXauiYJW1W/z/bEtHuhWR+t1hws05YhYtWssMKNg
	fwoDWHcZXHx9USvgYAsoCYxX4gl//bxmJj70qbHgHktpjeJcdDNf8tPdp9iZ7fcc67vdtBNTuPI
	EIA7D5lO/+3QBiLx+C5Brng0TL7UQ220=
X-Gm-Gg: AYBFou0C7wnkUBNz0UGRzgVbNr3ddglGwIC/wxAt0+I/Yl+27FI9ixN1WT1ejKkBZ1u
	D2+houMhKhQDks0F8qcLpPvwwow189ajpSSg8ekl7NK8mgyOq4j1axSMOUwj7+iiAvpUe4OP15n
	pgAna+eFKp0ZBMnZYnIAfbqyoFl0iqiOKD7nJ0TudU8GD4z8XfCtCZrgs2XqF6ngDcaXhV7hvMH
	iFfWx0CEBgykY40l7ygXSjp9K+9bcyfI9W+obdax70024A+s88cesSHhXO2HpxNzjbD/e4Z6e+K
	Xt5BdIZZq223TS5lYx1ecwm1fMtyRgH3+C7zKjP+3WT2lLOYbYxePS8S7jPAY1R9PCc5fZHT4R6
	70weVF8V0InjCeMKErv/jOnPnR2lfPH6qmcqObSNiyY/JKI3oSFYu0vva06TctW/hoAg=
X-Received: by 2002:a17:902:db0b:b0:2db:3b35:1ac6 with SMTP id
 d9443c01a7336-2e8427efd9dmr151731365ad.5.1791978158291; Wed, 14 Oct 2026
 04:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
 <20261008103831.542533-19-phucduc.bui@gmail.com> <14bbf027-4a16-4bac-b530-d4654ed38d4a@gmail.com>
In-Reply-To: <14bbf027-4a16-4bac-b530-d4654ed38d4a@gmail.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Wed, 14 Oct 2026 18:42:26 +0700
X-Gm-Features: AclHuK--pm1YXW-dAVCk4mePmFKUqLdOhzguEaV2jSOsxf_MJ7HFDWxjeVZGb_U
Message-ID: <CAABR9nHyso5GHpc5Gg-KLF3hJkCHQCYz_mK_i3_0fWDEimLEtw@mail.gmail.com>
Subject: Re: [PATCH 18/24] ASoC: imx-pcm-rpmsg: Fix imx_rpmsg_pcm_close()
 being skipped on rollback
To: Chancel Liu <chancel.liu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_124240_959944_4B9FD5D5 
X-CRM114-Status: UNSURE (   8.56  )
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Bard Liao <yung-chuan.liao@linux.intel.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Chris Bainbridge <chris.bainbridge@gmail.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, Takashi Iwai <tiwai@suse.com>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Geert Uytterhoeven <geert+renesas@glider.be>, Charles Keepax <ckeepax@opensource.cirrus.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>, wangdicheng <wangdicheng@kylinos.cn>, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, u.kleine-koenig@baylibre.com, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Liu,


>
> Reviewed-by: Chancel Liu <chancel.liu@gmail.com>
>

Thank you for your review.

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
