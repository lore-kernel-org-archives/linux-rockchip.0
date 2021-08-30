Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952BDC432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 13:49:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 57FEB60E90
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 13:49:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 57FEB60E90
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jdAhzUKMelWaQ6rj4Pl1X3YTFu0KgaGdISWnfZ8xTo=; b=Lfov27bUy66ghm
	8nSMho63qLFSPj70U3sAsEUVc2RfA6zvRtqD3CObBBsb0A1bRZUs3OZ2Rnqe6UtesE60LvC8bpzFx
	y20GltXHdTGZDehMwiqTYPh0vLj/2nvFm+Y/y38UnyOf0J9jq+4uu8X7VumSPhClph4Dm8keidPJJ
	UpWlSARZeyQnwLAQTXBRdAcGma/8nlqMbUmHh6arG3yzV1/vHl2tHO+pe64bHn3VgUyrLdV3Rj13z
	69rVfOEaaXekc5PYRlGVUMlpQisWkBgHzDAxea5+erwZDKwym3b4ghqBrGIFLnhCG2TfpgLHuFH4/
	Y6xexQ4/PvEPsZRY6cPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKhfR-00HLxo-BS; Mon, 30 Aug 2021 13:49:41 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKhfO-00HLwV-0C; Mon, 30 Aug 2021 13:49:39 +0000
Received: by mail-pj1-x1031.google.com with SMTP id
 g13-20020a17090a3c8d00b00196286963b9so6928830pjc.3; 
 Mon, 30 Aug 2021 06:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=sEL6//skpXK4Qyqc8Jdde129w8xF3Lu6qgCZPjdrGcQ=;
 b=smBI4VAxUel1TB4Wlp0QPxXgQboRnJKcEpl4OcOuGH6xZJbVE2lKRCc966PDCx1U+C
 5YImx8GxcydtlVg9a2PYyYmgTHqgHOWYJnvYvPMbzmw0KPBubmblPmwmZRZAQcDG7F6u
 qSnaBQ3yvDyt7fpMxbSiIYeN/q+WP4403Sn5v5eJo4C/i8r/0dh2PZPcbXgtQ08dwdia
 jaCHA8HR6W1cD4kuqgtdMObTvy5KG/odhgkhaDaTGTzm7NyTl/U6L6zDRRsIGNUvOgSD
 WSdWEt4Mr2BxHINBk4U4RzXhuZEPR3FaZyqj0k8ZoX7re2eGwbN82w8XulFV/mR//e0/
 2rRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=sEL6//skpXK4Qyqc8Jdde129w8xF3Lu6qgCZPjdrGcQ=;
 b=tB6VR//eDp67TNm9tDtTa9rceAGuVF0QnVYYrUMBJP7MqtbRE+6f4sZZQj1VIx/Jqt
 Sm6HNLp2n3qMfQvYuofJRs3sbET37UqIc5DRsdEZW4V4ExxpE2JWtstIIZU0vZdbSBF1
 qeHKQekqF36zzJcUA2UuqdxFDASd8vsQ2I4U6TnAxq9X1sfCjOYA5Zp9HIpmnKfGEGan
 jXv/G1wPIiRf0C/AmfP3+0UItjz4UovIjMU1UmeGwNgo8qFnGMr4/Jc8lWCHVU6DjZFP
 8Kq7hQ1fSl98Ka3bMVtghaR7+vEoqWF3sDRFSkPTO0CFMJtnciKZQJ2S6xdhJkk4wReJ
 3rMg==
X-Gm-Message-State: AOAM533m7ToW0AU8VSXAEEl1Td07Nh+K5OmL+KzQ/QwR8pmOn22U0aBt
 P2Tf9vsYBHbp2sWk62L0ayQ=
X-Google-Smtp-Source: ABdhPJxr+a34jajETUtu8a+GSDU1I2IxnoOCr/ht7tNQDe29mKMxkdj59W4xIpvU5RL6/AtyL+FKXA==
X-Received: by 2002:a17:902:6a81:b0:12d:c933:6330 with SMTP id
 n1-20020a1709026a8100b0012dc9336330mr21632098plk.69.1630331376009; 
 Mon, 30 Aug 2021 06:49:36 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id j6sm16585933pgh.17.2021.08.30.06.49.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 06:49:35 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: wens@kernel.org,  netdev <netdev@vger.kernel.org>,  "moderated
 list:ARM/STM32 ARCHITECTURE" <linux-stm32@st-md-mailman.stormreply.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,  linux-kernel
 <linux-kernel@vger.kernel.org>,  Giuseppe Cavallaro
 <peppe.cavallaro@st.com>,  Alexandre Torgue
 <alexandre.torgue@foss.st.com>,  Jose Abreu <joabreu@synopsys.com>,
 "David S . Miller" <davem@davemloft.net>,  Jakub Kicinski
 <kuba@kernel.org>,  Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 sashal@kernel.org
Subject: Re: [PATCH] net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable
 warnings
References: <20210823143754.14294-1-michael.riesch@wolfvision.net>
 <CAGb2v67Duk_56fOKVwZsYn2HKJ99o8WJ+d4jetD2UjDsAt9BcA@mail.gmail.com>
 <568a0825-ed65-58d7-9c9c-cecb481cf9d9@wolfvision.net>
Date: Mon, 30 Aug 2021 22:49:32 +0900
In-Reply-To: <568a0825-ed65-58d7-9c9c-cecb481cf9d9@wolfvision.net> (Michael
 Riesch's message of "Mon, 30 Aug 2021 09:57:51 +0200")
Message-ID: <87czpvcaab.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_064938_103417_A9E8ABD2 
X-CRM114-Status: GOOD (  28.15  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Michael,

Michael Riesch <michael.riesch@wolfvision.net> writes:

> Hi ChenYu,
>
> On 8/29/21 7:48 PM, Chen-Yu Tsai wrote:
>> Hi,
>> 
>> On Mon, Aug 23, 2021 at 10:39 PM Michael Riesch
>> <michael.riesch@wolfvision.net> wrote:
>>>
>>> This reverts commit 2c896fb02e7f65299646f295a007bda043e0f382
>>> "net: stmmac: dwmac-rk: add pd_gmac support for rk3399" and fixes
>>> unbalanced pm_runtime_enable warnings.
>>>
>>> In the commit to be reverted, support for power management was
>>> introduced to the Rockchip glue code. Later, power management support
>>> was introduced to the stmmac core code, resulting in multiple
>>> invocations of pm_runtime_{enable,disable,get_sync,put_sync}.
>>>
>>> The multiple invocations happen in rk_gmac_powerup and
>>> stmmac_{dvr_probe, resume} as well as in rk_gmac_powerdown and
>>> stmmac_{dvr_remove, suspend}, respectively, which are always called
>>> in conjunction.
>>>
>>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>> 
>> I just found that Ethernet stopped working on my RK3399 devices,
>> and I bisected it down to this patch.
>
> Oh dear. First patch in a kernel release for a while and I already break
> things.

I am seeing the same failure symptoms reported by ChenYu on my RockPro64
with v5.14. Reverting the revert i.e., 2d26f6e39afb ("net: stmmac:
dwmac-rk: fix unbalanced pm_runtime_enable warnings") brings back the
network.

> Cc: Sasha as this patch has just been applied to 5.13-stable.
>
>> The symptom I see is no DHCP responses, either because the request
>> isn't getting sent over the wire, or the response isn't getting
>> received. The PHY seems to be working correctly.
>
> Unfortunately I don't have any RK3399 hardware. Is this a custom
> board/special hardware or something that is readily available in the
> shops? Maybe this is a good reason to buy a RK3399 based single-board
> computer :-)

Not sure about the other RK3399 boards but RockPro64 is easily
available.

> I am working on the RK3568 EVB1 and have not encountered faulty
> behavior. DHCP works fine and I can boot via NFS. Therefore, not sure
> whether I can be much of help in this matter, but in case you want to
> discuss this further please do not hesitate to contact me off-list.

I tried to look for the differences between RK3568 and RK3399 but the
upstream device tree doesn't seem to carry a gmac node in the device
tree for EK3568 EVB1. Do you have a pointer for the dts you're using?

Also, other than the warning "Unbalanced pm_runtime_enable!" do you
notice any other ill-effects without your patch?

If this affects all RK3399 boards as ChenYu suggests quite a few users
are going to miss the network once they upgrade.

Punit

[...]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
