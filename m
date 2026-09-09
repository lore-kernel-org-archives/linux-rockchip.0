Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33A40C79F8C
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 09:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+1rJoZqEAAdwfqUcpdT6dBf4gmgpkUCNKAZ75pAKYQ=; b=tUH7HfvXtAp0kt
	/m5FVuGMAuiC3KxGLdVYOzIxeQKU++HcwOh1KugRN+nHmOQpV3DzElyom14Ffey7SQiFj4IZKXMvu
	8IVdVqo8SMPZqbTZrdHihxEU0nQABJTpPCEEvXzfUUwYd1cAapNngytecYhFYGGoaUQPph4Gqc/mn
	9vK5J+7GoV+WbMQrhjMGYyE/I8+ZXEY2GtCFDiiLngNQ6GrtVRNzqcUFxwacGariCozTs/3p+XcgX
	zoD3XZEbhd4QBwP6qtMgvUFX9d//AFDC3dYyaQTlUYh4NHGb2MJvTiBZqlaeJiZpnoNnGfTINjPQ3
	Gz6A+JcBhNwTOA08rJoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ESX-0000000BGkG-3EWM;
	Wed, 09 Sep 2026 09:19:13 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ESU-0000000BGj6-3O7O
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 09:19:12 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-482e1b55da9so633951f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 02:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788945549; x=1789550349; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PL9pcPV+bgLn+N8hsfR6afv5u/5q3iwl14xc1NE3dOQ=;
        b=PAdAiDwLj0T719iOD+WY2RPT0vaQETePwn9/yWHM5Ixftt2JnZfrBWrqIKOQwjJTXf
         uXc+IFFpip3tOl3zK4auPT3nPqdMdYRnU96FEUsFjh5ECEZoK2nxC+RXdZVuTjs1ZSjZ
         Rty+HenE7QG1qb3olRt/fQ7Y0SjS91Il3ZHZsv4zEAbGpRII/6LwsZ+EhD+aon/SQaD+
         ZFFZfMLAxW1gyYc4kSr5TFl/ltwqzk3tM9b/kjLvYMeDw+Kl9nkliek+z914mYaOB44s
         hfvJUKvf9F/obUt0xjrbL1u4cHrcDiHA+VfA9ilaCKPJvy+abMWiqyA7mTW/vw+Mt9b5
         n/5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788945549; x=1789550349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=PL9pcPV+bgLn+N8hsfR6afv5u/5q3iwl14xc1NE3dOQ=;
        b=SMprjC2+np1kVNpTWbOXYKxoecvqU/kNPbPf1cstoTTTnYq2oiHeLsLe2F9J9EXjkc
         32RrfXa63xYdwbowDqN5NXRHK+oYhGrlNQ/HqT+37mmbYWNp4JVzjCsmM19IO85U1jbe
         NYMwjkTFvkd8nvAb2YoPnrwjqgAjw1m/KWYug5STnxwganyodUIid50rHUkR2/2zszaO
         qzEo4gsNb6QC5IgnB8dkI+kfnQfN1eeEvpZ4JFQlLjwJsA62UhIMYBd3HjK7/0tfqF13
         B7SDAXpZjbiEKEtsSX7rj1MPnE/ELs2nsyMLllyNUC301r/DLbPtubhGeMJXIXBbKGV1
         uI3A==
X-Forwarded-Encrypted: i=1; AKwUvBxHFl1lvQLF/ey6+DaPm67SMtRE6RwhiPSA5/iQepHV1tiIQ/uUDmghwCXm7K/azaZSSt5/Vpw2neRseekpkg==@lists.infradead.org
X-Gm-Message-State: AFuF++kVVf4ud9dIWajlYYfNSljtgDQm5kqtKsUvZoieFURuFh7JiQOd
	WvE44pk0Z2HbMSyZGDhEa/GL7j6xZKWQ80quTV3aZMyHBk3tEsvha/cC
X-Gm-Gg: AYBFou3Ft2w9o0MEsdw1K8MIh1rsQ928WMmirM1nOV/yV2sj0owQSlyVzJtm1VxwFxk
	sjHkfqPlpfoVP/hBDl0zr1Qo3ZrERZPI7XDwTFlod58INmxvFOb3CYYToZEDywTsxrivVSSwPLg
	RdjwB9PrrvIYoCCqfbzUG8kQbGgMRFTewutYEXBasrlk8SvfReLBQDaJdpFQwZxIJXGUHMkBnoo
	Ktk/iLXtoNhZ5trvUD5lAz+NnCfOoz5eMNf+qVihVksY1cmL2bi97jPoRcX+MU1ROY53oA8Zji4
	ZnxmmNyncli2xn5q+usDAwsQJYgaFL4QG18ZrrQX/Non0wmXnlJJwz2dJyZFx8fON39PoZtw+6u
	k7LqLINGJf1tKB56SWXdAImRcUCNwx2uSqmseh9WmD4yFnKf08tvIqmd33JYDQ8eMqXZw/enKN5
	IEK7tvmVjY3S2UHGE9Q+0puznJ1I0lyAoh52XA57QXom3FWmXtB91ARD7usJAMGswppr94xMspG
	u1GoetpeR/cF6q/+WQwPytsPUL/EFelBPampWyARDyKAiIRUy75LUo/YynF4CKeTEZV8RdX9T0Z
	IVnp
X-Received: by 2002:a05:6000:25ed:b0:485:82f7:9053 with SMTP id ffacd0b85a97d-48589246177mr34007529f8f.1.1788945548438;
        Wed, 09 Sep 2026 02:19:08 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8369007971AC9F7C06630F.dsl.pool.telekom.hu. [2001:4c4e:1b83:6900:7971:ac9f:7c06:630f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4858d2693e8sm41822588f8f.3.2026.09.09.02.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 02:19:07 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/7] arm64: dts: rockchip: rk3588: add an OPP table for the NPU
Date: Wed,  9 Sep 2026 11:18:24 +0200
Message-ID: <20260909091825.10838-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <c58d711ff5c9a01cfd69c2ddf86bfd969b36cc63.camel@ndufresne.ca>
References: <c58d711ff5c9a01cfd69c2ddf86bfd969b36cc63.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_021911_059262_BA29569A 
X-CRM114-Status: GOOD (  33.99  )
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

On Mon, 2026-09-08 at 15:44 -0400, Nicolas Dufresne wrote:

Thank you for taking the time on this - and no worries about the PoC not
being posted; the credit in the commit message was deliberate, the rates
and voltages really were arrived at twice independently.

> My impression, and I was to study this properly is that having the same
> table on every core and adding the opp-shared set on it was actually
> probably the proper way to describe this "single clock for all"
> relationship.
> [...]
> I'm curious what's the right approach, and what is the real meaning of
> opp-shared if I got that wrong.

You got it right, and I got it wrong. The binding says (opp-v2-base.yaml):

  opp-shared: Indicates that device nodes using this OPP Table Node's
  phandle switch their DVFS state together, i.e. they share
  clock/voltage/current lines. Missing property means devices have
  independent clock/voltage/current lines, but they share OPP tables.

That is exactly the hardware here: one compute clock and one supply for
all three cores. And it is not only documentation for non-CPU devices
either: in drivers/opp/of.c, _managed_opp() only lets several devices
share a single opp_table instance when the table node carries opp-shared;
without it each device that points at the same node gets its own table.

So the accurate description is the one you had: the same phandle on
rknn_core_0/1/2 plus opp-shared on the table. Putting the table on core 0
alone describes core 0 and says nothing about the other two, which is a
worse description of the same hardware. I will change this in v2 unless a
DT maintainer disagrees.

One consequence is mine to fix on the driver side, not yours to work
around in DT: the driver currently picks the core that carries the table
by taking the first core whose node has operating-points-v2. With three
carriers that choice - and with it the name under /sys/class/devfreq -
would follow whichever core bound first. That is a driver bug the moment
the DT stops being lopsided, so it gets fixed in the same v2.

> We must not justify our DTS choices based on driver behaviours (or miss-
> behaviour). We must justify it based on how accurate the hardware
> description is.
> [...]
> It should probably be fine to not use opp-suspend, if transition back to
> 200Mhz works. It not fine if its to avoid a driver deadlock (argually due
> to a bug).

Accepted, and it is a fair hit. The paragraph as written justifies a DT
choice with a driver limitation, and that is backwards regardless of
whether the limitation is real. It comes out in v2.

On the meaning: your interpretation matches mine, and it is stronger than
"descriptive". The binding says opp-suspend "marks the OPP to be used
during device suspend", and the devfreq core acts on it directly -
devfreq_add_device() reads it into devfreq->suspend_freq, and
devfreq_suspend_device() then sets that rate.

Which leaves the question you actually asked, so I measured it rather than
argued it. On an Orange Pi 5 Plus with this series applied, in-tree rocket,
the OPP table of 3/7 read out of DT, simple_ondemand with min_freq/max_freq
left alone: 25 s of inference, then 60 s idle.

  - The governor takes it back down on its own. trans_stat records six
    transitions for the run - 200->1000, 1000->800, 800->1000, 1000->900,
    900->500, 500->200 - and then 60129 ms at 200 MHz with zero
    milliseconds at any other level for the rest of the window. The step
    down happened within one 250 ms sample of the load ending.

  - The transition completed, it was not merely requested. vdd_npu_s0 goes
    700 -> 850 mV under load and sits flat at 700 mV for the whole idle
    window. In _set_opp(), when scaling down, config_regulators() runs only
    after config_clks() has returned success, so the supply could not have
    come back down to the 200 MHz voltage if the SCMI clock set had failed.
    All four voltages of the table were exercised: 700, 750, 800 and 850 mV.

  - The clock summary in debugfs agrees, reading 200000000 for scmi_clk_npu
    after the load. I only sampled it after the load, so I am offering it as
    consistent rather than as an independent check.

So the transition back works here, and by your own criterion it is fine not
to use opp-suspend. This is one board and one part, so I would not call it
more than that.

Two things I want to keep apart rather than join with a "therefore", because
joining them is what made the original paragraph wrong:

  - What guarantees the rate across suspend is the driver, not the governor
    and not the DT. rocket_devfreq_suspend() in 5/7 sets the recorded boot
    rate itself on the system suspend path, and 4/7 restores it before the
    last core goes down and on .shutdown. That is the answer to "is it safe
    without opp-suspend".

  - Whether the governor walks back down to 200 MHz when the NPU goes idle
    is a separate fact, and it is the one you asked me to check. It does.

opp-suspend acts on the first of those. Since the driver already puts the
device back at its boot rate on that path, the property has nothing left to
do here - and that, rather than any deadlock, is the argument v2 will make.

Worth saying plainly: every number in the cover was taken with the limits
pinned by hand, so this is the first time the governor was left to decide
anything on this board. Your question is what exposed that.

> This is irrelevant, I think you can drop this paragraph.

Agreed, dropped in v2.

> Ack, this is safe thing to do.

Thanks.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
