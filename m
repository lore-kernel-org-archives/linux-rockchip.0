Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DAE606AB84
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 13:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YDuJSUHR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=gK8jig75
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6U4vHee2GwVRyVCCCKW2a5QdOqmi7J4gvgtebsWsS5k=; b=YDuJSUHRug6jhn6Fz9i6yQMg43
	fzWC4P8W0LoYxYc5ctDueaE/u0Et600Hg+h68AIes1OYGTmGw4xUxfS3kGaGN9O/jcdOwUp+U3f85
	taqjP2c1qTMFA/W7hUR8ooZxMm031gYrAGGi1+lKB7EgxW+IaGbHI7TWpEZ5EfrWFMwY3kBDgGUUi
	bQWfk5yUAzUd8CiikwU9mCK9vABTDgLW5NFJr1BiNUCwNwD9VgGmDEoge0OjywWvZC/6Owdh/EkYN
	731ryIWFGodUZoGlQhvVn3ihnUvDqcumoCkbLq2rQqPQ42xVdmw5JHcU4HjkZWRSLPSQHbUoHvT6v
	hIJfFQ7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrFr-0000000CuXf-1c12;
	Fri, 13 Nov 2026 13:23:47 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrFi-0000000CuP0-4C4W
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 13:23:40 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4a1fbd52ab6so10344605e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 05:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794576217; x=1795181017; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bPhouWL64Ss7xA+3PtWE37jW1mEzq4J5HXL5n/CanOg=;
        b=gK8jig75ZgI701ePh70qa9edXsST5TY2TIUB9LWrANrXxfEO+eLAXnLwy1TF90ajSw
         l3Q/R2WDpGo9OPp3ItIAnT+1f8BArmb9VfLvizHfvNirInFiKUzhwgy3BAjgtKGpKnNg
         8/A/90d0nm+tu3s2NQIcK2owYiRLYz1uTp9iCYrBto54QTixJwYNvtNEgnFmuAulmcin
         cbVgtmov45PS7KUlgos/gnOfXzwjA4z1rF9fI5acJRZLVcExnfbAtpL7eiKydVN5jr2v
         3W4291uk9x+06Tw4Dpx4v0ujiOeIheWCNI+JjGyUzKH2NuaVCe1kD4JiNqd0O6sVSNTF
         kI5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794576217; x=1795181017;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bPhouWL64Ss7xA+3PtWE37jW1mEzq4J5HXL5n/CanOg=;
        b=PacZyxYXFi9INsNeBWt+wexIxq4JjcRmSM1AoWGdcPTGUAI58Gd1nBv3sANTU4jCP0
         K4rI7qknw2oWROu94C9MqypLRU6nPBXBREl7MCJ5nmBWk4a97+S4OF/R0mgFKxXCiNkx
         s0f2ZFptdIX+9UcV8r7Ny7cHmx5P2j9BRq0dyX3HTdIbnOR7gMSl6Y9rycqA4ZWrLeeg
         6+bNJeu0HH1kCAky+1OOYhqoUt1m8yCq5/EVKMIl9lMr+gk0wdPDLmDnyDYmtMy8UHci
         GqRcorpEkt2DtLvcC8p0QHozTz67gULhGORwtThY1mltbZiM3mnRBlmvUU7M9jPsTocB
         fNoA==
X-Forwarded-Encrypted: i=1; AL+hErHin6JeOCs8FNfc1Jd6iS2CcqWZAcMM+AeUFdFLGonyIP0t8XzFbmAzttJchWa/Tgt8SYpcOeyc1nc9fxnWIg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/9kO0JcYPrPEdPwXH/AXAsVaM+ZnV9SbiGhcDbHsQFMdWkTYsK
	ZHXykOACwPlDCKKDZWW3ZXPRhv4PzKvy3Pw2cMrmR1ygOHM0eNUSiUu5
X-Gm-Gg: AYBFou1TpBPrEkmRnPnnvELtLyZijOihm3x0wDzzy/YwdqKXOr43nehAWs7EY3DYC5u
	aFPAmJVG5DYbiZ/BouFE2m0yWWq7OAhyPlPEbf2SEWo9iHcHZVOskGETrY9Lctv4D5/6r1JbazX
	TDne2coDjMHOPXQCCjrLkR7wLXzOQidzJAV2MOtFCp40MJlbygsLTgdXbRi2J6cAwgWuM4FTBaE
	07THWOmj74oA0Wx4o2rKA0Fa1o43QXJlj2LxBWz2+MK7+mtG6WjBFpkWw6ZTGDxGxR3dNY0cbOm
	A43lUSx5b3DAyUA0CcJnml9YsTB3nKJcvIROlh52B0HApZlyje/x6ndB5/J4Wn2LGvh70+t2EXK
	ODIMeR5rPQinymGjCBrm77bgVEVUn41lDTl8XFRZky57je+vzjakl8fp3yJofZ8qVYaxvXK0whL
	9lLE8nJecqfCnV7uBcRRrG9CaON4N9+2cWfEds8CjAn4CLzKPytkMnfBG9dGTImbrlxMB+aXQ9A
	ydwxg8R5jXyYbOUqfjb7RtfJSDdF23di7jzUSBM2USU6RRz8yr9jRWS0f9+yWkPyLc/EJvtRp+M
	y5+73xv7Hcno02tZaS4WuReNYBa5VwBe1dqG863jhnJ0L7XmDUYgewgw//WN8s2VPWUPiCTvH0s
	=
X-Received: by 2002:a05:600c:8010:b0:4a7:9025:5c3b with SMTP id 5b1f17b1804b1-4bb55a6a5f0mr53609575e9.19.1794576216701;
        Fri, 13 Nov 2026 05:23:36 -0800 (PST)
Received: from vlw-PC.. (static.18.103.245.188.clients.your-server.de. [188.245.103.18])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb4e284339sm136419825e9.5.2026.11.13.05.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 05:23:36 -0800 (PST)
From: Vladimir Bely <vlwwwwww@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: heiko@sntech.de,
	ulfh@kernel.org,
	finley.xiao@rock-chips.com,
	zhangqing@rock-chips.com,
	abel.vesa@oss.qualcomm.com,
	tomeu@tomeuvizoso.net,
	royalnet026@gmail.com,
	sebastian.reichel@collabora.com,
	shawn.lin@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	diederik@cknow-tech.com,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v16 09/16] pmdomain: rockchip: add optional per-domain power-on settle delay
Date: Fri, 13 Nov 2026 16:23:22 +0300
Message-ID: <20261113132323.159015-1-vlwwwwww@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261108065917.135194-10-gahing@gahingwoo.com>
References: <20261108065917.135194-1-gahing@gahingwoo.com> <20261108065917.135194-10-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_052339_084072_3ADA9D2E 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.4 (/)
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
X-Spam-Status: No, score=-7.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,FROM_LOCAL_NOVOWEL,HEADER_FROM_DIFFERENT_DOMAINS,
	HK_RANDOM_FROM,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, Nov 08, 2026 at 07:59:10PM +1300, Jiaxing Hu wrote:
> The NPU power domain is switched off when the driver probes, so the first
> power-on goes through this wait even when the bootloader left the NPU on.

[...]

> +	[RK3576_PD_NPU]		= DOMAIN_RK3576_R("npu",  0x0, BIT(0),  BIT(0), 0,       0x0, 0,       0,       0,       0,    false),

Hi Jiaxing,

(reply to https://lore.kernel.org/all/20261108065917.135194-10-gahing@gahingwoo.com/ )

This probe-time power-off hangs a board that does not enable the NPU.
I hit it with v14 as Armbian carries it on 7.3.3; v16 has the same
DOMAIN_RK3576_R("npu", ...), so I expect the same there, but I have not
run v16.

Board: FriendlyElec NanoPi R76S. Its DTS has no domain-supply on pd_npu
and the NPU nodes stay disabled. vdd_npu_s0 is RK806 dcdc-reg2,
regulator-boot-on, no consumers.

On about every second boot the SoC hangs hard ~30 s after start: no
oops, no answer to SysRq over the serial console, only the watchdog
gets it out. The last console line is "vdd_npu_s0: disabling" from
regulator_late_cleanup(). The kernel without the series (7.2.8) does
not hang. 10 boots each, no hang, with any of:

  - regulator_ignore_unused
  - regulator-always-on on vdd_npu_s0 only
  - the NPU enabled as in your ROCK 4D patch (domain-supply and
    npu-supply on vdd_npu_s0, cores and MMUs okay)

PMU registers after boot (regmap debugfs of 27380000.power-management):

               NPU not enabled   NPU enabled as on ROCK 4D
  0x110 req    0x000013e0        0x000013fe
  0x128 idle   0x000313e0        0x000313fe
  0x214 pwr    0x0000003e        0x000001fe
  0x230 stat   0x003e4181        0x01fe4181

With the NPU not enabled, nputop/npu0/npu1 (bits 6..8 at 0x214) are
still powered and their idle requests (bits 1..4 at 0x110) are not set,
while pm_genpd_summary lists npu, nputop, npu0 and npu1 as off-0 from
early boot.

My reading: rockchip_pm_add_one_domain() powers the parent "npu" domain
off at probe because of need_regulator, but the children U-Boot left on
are neither idled nor powered off first, and genpd then treats them as
off, so nothing cleans them up. When vdd_npu_s0 is cut later, the bus
hangs on those NIUs. I have not dumped the PMU on a kernel without the
series and have not tested a kernel fix, so this is a report rather
than a diagnosis. Idling and powering off the children that are on
before the parent at probe, or skipping the probe power-off when there
is no domain-supply, look like possible directions.

This would hit every RK3576 board that does not enable the NPU, which
is most of them.

More detail: https://github.com/gahingwoo/linux-rk3576-npu/issues/4
I am happy to test patches on the R76S; it has a serial console.

Thanks,
Vladimir

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
