Return-Path: <SRS0=kO9o=EG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D9FC388F7
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2020 12:54:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 125AD206E3
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2020 12:54:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="HOW4XCY2";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CMe3HzoA"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 125AD206E3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FKYp/OI6+fYvZLBnnikVXMk8hsHd34xfduZqO+zyQ4s=; b=HOW4XCY2Wq0jIzMizM0YGf6k+m
	/DW2EBNegzH+op5b1mleA0Q7EtY5hkR0OAHCRX5xn3q1rFEfUgTeN0PSQKMz+trHIhwHZ+Wkz5eH7
	tUNFH+FawgmulOb8tsMc9Nv0xlwl2tUlncq/nckaQz/B2ugWMajs7slBzwF6Z8CBwnXKjssUe/A2G
	NUGyVWsGbwLTU1gmjFel1oyd+fvFtEt7WJjmDGNqqrCJx7oVaJgx25J0lkwFoR85tm9VlxxLBT8eo
	krNahGPcCVMmfMB0BXe9jKlMurxqx4yEz61rH717CvOhIbYoVbfvf+Z6hsH92J0sq65qDsSiUGnt5
	Mev3UsqA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYqOp-0003LM-Lm; Sat, 31 Oct 2020 12:54:27 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYqOn-0003Ki-Mm
 for linux-rockchip@lists.infradead.org; Sat, 31 Oct 2020 12:54:26 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id 63so4048277qva.7
 for <linux-rockchip@lists.infradead.org>; Sat, 31 Oct 2020 05:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=wfRnw3+anh8z7qTIE5rseWZ3U0MEKeF5bcJGz/o6FBc=;
 b=CMe3HzoAEvMeb26eBacITneeFip3MxxJz3UxdZvWzNiafYmh1/y3dgSD0BOdrOYCyc
 b/giDNDYL79xvDO4GuRgQ3ojkh/S0zvRpi3FLRq53EMq163W1d4/kxWqI2dnEJ5N3wIM
 rTNYMHOGLxxm46oX1NAYeaAWm/afpZ1aYSxfM648Hde071Q3q9+dh2KeZFcd/VEb6g12
 ecyRQ5OTm745X4ABTSJooxc336xx32h/IGxz8GiSx1TBvZccNsubkMTo8PzBVwwwF+ZB
 tILpM5z9Xm9GP8Phw+5IOn95PP9MgvCUgg0Htajk/YfBceZUleW31IyrATGuTWPIHuGV
 wZ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=wfRnw3+anh8z7qTIE5rseWZ3U0MEKeF5bcJGz/o6FBc=;
 b=Q1C5hZxgEBL6AHnzH6GTgo7VF+REex6VKTW+16GqikRujVlPZ8+KOI0XwkxhoZ8hen
 zCM3Ry5JuAO3sdRcKD9fo2K+dN4dcTlOgWpUP7HkmbGHQZX5rntsk5Fs/cjOUQHQmjWP
 tPhJxlS8EjK2wu6PFfMcy7j1PO/u0Ju4PbbJDNhXh5+alI4I9/dt398s5HQjNukE8XFE
 sg6DaROsAB02b1dJhXN7PXJiXsCOgGcYc3L1fU56TfrzWWYwMH7cogfbShUaEGvzvU5X
 1PA8VNa7ijbZJUOP7ZDlkmiRQAY1hDUua4VBnOV3KG/euwQkvWS2p5W1vMfWy2iUvU/i
 LIhQ==
X-Gm-Message-State: AOAM531Z1E9qXhqDPGaXU63h8mMrKcxoSsKde6tZdAUmXFFzl0SUM8Pv
 VsS9k4OrzWL2E1KCs5bQM4M=
X-Google-Smtp-Source: ABdhPJy7PB22FYhIMN3ZhffO52nMlRDhYfAhBF4yEswfqgQKkdW//QIi+v35LkJaXAW/KbG/q9kkxQ==
X-Received: by 2002:a05:6214:153:: with SMTP id
 x19mr14193773qvs.50.1604148862155; 
 Sat, 31 Oct 2020 05:54:22 -0700 (PDT)
Received: from ?IPv6:2601:153:900:7730:b0d5:ad61:dfc0:1d2b?
 ([2601:153:900:7730:b0d5:ad61:dfc0:1d2b])
 by smtp.gmail.com with ESMTPSA id x6sm4143832qti.77.2020.10.31.05.54.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 31 Oct 2020 05:54:21 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
Subject: [BUG] cqe unable to handle buggy cards
To: Ulf Hansson <ulf.hansson@linaro.org>
Message-ID: <fa7f3fc5-c37a-ac49-e14a-45a1d2e0a942@gmail.com>
Date: Sat, 31 Oct 2020 08:54:20 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201031_085425_784246_2A5514FB 
X-CRM114-Status: GOOD (  10.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 nuumiofi@gmail.com, linux-mmc@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Good Morning,

We are seeing an issue on the rk3399 with certain Foresee emmc modules 
where the module reports it supports command queuing but fails in actual 
implementation.

Unfortunately there doesn't seem to be any method for the mmc core code 
to detect this situation and disable command queue automatically.
There also appears to be no way to disable it at runtime.

Certain modified kernels have added a patch to enable runtime disable of 
command queue entirely, but this will affect mmc core as a whole and not 
just the buggy card.

Does anyone have any insight into this issue?
Thank you for your time.

Very Respectfully,
Peter Geis

[   64.472882] mmc2: cqhci: timeout for tag 2
[   64.473349] mmc2: cqhci: ============ CQHCI REGISTER DUMP ===========
[   64.474057] mmc2: cqhci: Caps:      0x00000000 | Version:  0x00000510
[   64.474763] mmc2: cqhci: Config:    0x00000000 | Control:  0x00000000
[   64.475468] mmc2: cqhci: Int stat:  0x00000000 | Int enab: 0x00000000
[   64.476172] mmc2: cqhci: Int sig:   0x00000000 | Int Coal: 0x00000000
[   64.476875] mmc2: cqhci: TDL base:  0x00000000 | TDL up32: 0x00000000
[   64.477578] mmc2: cqhci: Doorbell:  0x00000000 | TCN:      0x00000000
[   64.478281] mmc2: cqhci: Dev queue: 0x00000000 | Dev Pend: 0x00000000
[   64.478984] mmc2: cqhci: Task clr:  0x00000000 | SSC1:     0x00011000
[   64.479687] mmc2: cqhci: SSC2:      0x00000000 | DCMD rsp: 0x00000000
[   64.489785] mmc2: cqhci: RED mask:  0xfdf9a080 | TERRI:    0x00000000
[   64.499774] mmc2: cqhci: Resp idx:  0x00000000 | Resp arg: 0x00000000
[   64.509687] mmc2: sdhci: ============ SDHCI REGISTER DUMP ===========
[   64.519597] mmc2: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
[   64.529521] mmc2: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
[   64.539440] mmc2: sdhci: Argument:  0x00010000 | Trn mode: 0x00000010
[   64.549352] mmc2: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000034
[   64.559277] mmc2: sdhci: Power:     0x0000000b | Blk gap:  0x00000080
[   64.569214] mmc2: sdhci: Wake-up:   0x00000000 | Clock:    0x00000007
[   64.579061] mmc2: sdhci: Timeout:   0x0000000e | Int stat: 0x00000000
[   64.588842] mmc2: sdhci: Int enab:  0x02ff4000 | Sig enab: 0x02ff4000
[   64.598671] mmc2: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
[   64.608446] mmc2: sdhci: Caps:      0x44edc880 | Caps_1:   0x800020f7
[   64.618161] mmc2: sdhci: Cmd:       0x00000d1a | Max curr: 0x00000000
[   64.627801] mmc2: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0x642017d7
[   64.637376] mmc2: sdhci: Resp[2]:   0x4e436172 | Resp[3]:  0x00880103
[   64.646855] mmc2: sdhci: Host ctl2: 0x00000083
[   64.656080] mmc2: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf0628208
[   64.665445] mmc2: sdhci: ============================================
[   64.674998] mmc2: running CQE recovery

[  125.912941] mmc2: cqhci: timeout for tag 3
[  125.921978] mmc2: cqhci: ============ CQHCI REGISTER DUMP ===========
[  125.931200] mmc2: cqhci: Caps:      0x00000000 | Version:  0x00000510
[  125.940389] mmc2: cqhci: Config:    0x00000001 | Control:  0x00000000
[  125.949499] mmc2: cqhci: Int stat:  0x00000000 | Int enab: 0x00000006
[  125.958527] mmc2: cqhci: Int sig:   0x00000006 | Int Coal: 0x00000000
[  125.967486] mmc2: cqhci: TDL base:  0x00000000 | TDL up32: 0x00000000
[  125.976260] mmc2: cqhci: Doorbell:  0x00000000 | TCN:      0x00000000
[  125.985065] mmc2: cqhci: Dev queue: 0x00000000 | Dev Pend: 0x00000000
[  125.993698] mmc2: cqhci: Task clr:  0x00000000 | SSC1:     0x00011000
[  126.002244] mmc2: cqhci: SSC2:      0x00000000 | DCMD rsp: 0x00000000
[  126.010716] mmc2: cqhci: RED mask:  0xfdf9a080 | TERRI:    0x00000000
[  126.019159] mmc2: cqhci: Resp idx:  0x00000000 | Resp arg: 0x00000000
[  126.027525] mmc2: sdhci: ============ SDHCI REGISTER DUMP ===========
[  126.035955] mmc2: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
[  126.044258] mmc2: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
[  126.052396] mmc2: sdhci: Argument:  0x00000001 | Trn mode: 0x00000010
[  126.060370] mmc2: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000034
[  126.068241] mmc2: sdhci: Power:     0x0000000b | Blk gap:  0x00000080
[  126.075978] mmc2: sdhci: Wake-up:   0x00000000 | Clock:    0x00000007
[  126.083552] mmc2: sdhci: Timeout:   0x0000000e | Int stat: 0x00000000
[  126.090937] mmc2: sdhci: Int enab:  0x02ff4000 | Sig enab: 0x02ff4000
[  126.098219] mmc2: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
[  126.105403] mmc2: sdhci: Caps:      0x44edc880 | Caps_1:   0x800020f7
[  126.112649] mmc2: sdhci: Cmd:       0x00003013 | Max curr: 0x00000000
[  126.119700] mmc2: sdhci: Resp[0]:   0x00400800 | Resp[1]:  0x642017d7
[  126.126594] mmc2: sdhci: Resp[2]:   0x4e436172 | Resp[3]:  0x00880103
[  126.133334] mmc2: sdhci: Host ctl2: 0x00000083
[  126.139652] mmc2: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf0628208
[  126.146008] mmc2: sdhci: ============================================
[  126.152361] mmc2: running CQE recovery



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
