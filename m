Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C96FC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 13:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfoqqaPd2z1vyBltjUMlKqZzmSxMFsxDl/wcSV3WDAw=; b=SQPaFnD+/eAKDJ
	0SbL081FCd3Duo6wW907dkebMoyQQSHKjTxv/r6u8L7uccDoMuxO8uvq2tFxYPjJ4q5OQym+nOyzo
	rd6kHEaAhOqmZSZrY94UW7asDxPVLGs8lPoQo63aSOtJG5dEvCAWqRBMp/G9APdKkYGfgBqpfvesj
	lsAPEdpbdRq3jghM87SgQ5wNyp8ZUNAqlgpj+ZguB21yPQiWJ6nZGcB1hmkEobODc3k5pMYkdMSCU
	3gFLqFv6FoeHTsQVXkiDne2DbZ6HEz89cCLMqwjq4bvr581vXlKCyTaTcxufgvcdz3MQqSvd7g3j8
	6F061Fzmgk22hPB9x+XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmbkc-00G6Oe-Eb; Thu, 05 May 2022 13:42:38 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmbkN-00G6Bj-J0; Thu, 05 May 2022 13:42:25 +0000
Received: by mail-ej1-x633.google.com with SMTP id dk23so8819811ejb.8;
 Thu, 05 May 2022 06:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sr4Ss5yfaa7IzLIpJOUADGyVDnYifVqgDwzhtvc5Yqk=;
 b=Ap/og4uKYE3XviNHlHnNnDHUwZP/DpMHAgQEZMnqoe1HumMVUoqDjkYTzVHG2dh3l7
 mlm1cetp3drBMEmgHIQk3ihJ5EHeIQITI6hbL2XKWXoSKb5EFMJ3kppGM/+XZGposaIf
 NVY8yoh6w7MDLzb8v5pWTMFc0el9ng1r63u/CGCv9tiMtVN/Zx87a0T9UuNQ5wM6L3/7
 hZ/Ul+gLMSi1EKSVoXXNLyPO8ZN6isUifZkN+u3O94ODMBOfKrOSvbbMqGWNvHvShkzq
 2pOHfVMl8maZJodT7EiNZl8Hk9VJvDgQaulQy7D7xINSmCmw9okZ0V8Z+oMSy/DlItf6
 YkBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sr4Ss5yfaa7IzLIpJOUADGyVDnYifVqgDwzhtvc5Yqk=;
 b=ImxeuvmEw3D5WHUtHzd/AvukHjPfQaieYh8ilgFbOZmdWvRZKJ6IKuStRmnL/qUF5W
 AiTb8tW5D0uKw4kYWw+cveLP8nBD7SoKf3TW1tqjcqEj2rvEdZyzA+Xv6v8A1sEv5+WN
 kVqZKuLYC3CGhFNyN/wShHHC16rZxhhQLIdesc5Rzr8Kz0qbIL+XLshSlMQchqveGMq8
 bn/w0K9OHcqNGMF2NNk9vV+LPS/eyUO+7cebcVU4zfaOd2lDsOyUVJZrQc4FAEBup1Vx
 LqpOdPFf4dF0SQgTWZY2JP3uatTVEO8P5MJJ9oWpqf/n5pCtVRu3a5zgTDQvhDefeqmT
 6Xjg==
X-Gm-Message-State: AOAM530Pjj4Lm6mSkrideF5I9va+MwZAzPxVDrXn9fizDxKi0x/FvyIT
 jg33S7uppBG+K3UxMftSSAw=
X-Google-Smtp-Source: ABdhPJysPIrodFwBplaq01ISQFO8f3efO8y4iEOVzqn/xijXE0ymwQ5370eO3ob6EdukIyfEhQgDUg==
X-Received: by 2002:a17:906:8306:b0:6f4:314b:4db with SMTP id
 j6-20020a170906830600b006f4314b04dbmr22375737ejx.226.1651758133103; 
 Thu, 05 May 2022 06:42:13 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 qk13-20020a170906d9cd00b006f3ef214df3sm762281ejb.89.2022.05.05.06.42.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 May 2022 06:42:12 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Etienne Carriere <etienne.carriere@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
 linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [BUG] New arm scmi check in linux-next causing rk3568 not to boot
 due to firmware bug
Date: Thu, 05 May 2022 15:42:11 +0200
Message-ID: <1837825.69bXt6fAuV@archbook>
In-Reply-To: <20220505101032.icqb2hau4dhj3afr@bogus>
References: <1698297.NAKyZzlH2u@archbook>
 <CAN5uoS_MgBiTVZCRSZyYCH4cnUZD_bHj2+mZu661bFV8TKWScw@mail.gmail.com>
 <20220505101032.icqb2hau4dhj3afr@bogus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_064223_661378_27E206F5 
X-CRM114-Status: GOOD (  24.67  )
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

On Donnerstag, 5. Mai 2022 12:10:32 CEST Sudeep Holla wrote:
> > > > > On Wed, May 04, 2022 at 02:49:07PM +0200, Nicolas Frattaroli wrote:
> > > > > > Good day,
> > > > > >
> > > > > > a user on the #linux-rockchip channel on the Libera.chat IRC network
> > > > > > reported that their RK3568 was no longer getting a CPU and GPU clock
> > > > > > from scmi and consequently not booting when using linux-next. This
> > > > > > was bisected down to the following commit:
> 
> OK I missed to read the above properly earlier. If scmi probe failure is
> resulting in Linux boot failure, then that is another bug that needs fixing.
> Why does not getting CPU clock block the boot. I would like to see the boot
> logs. I considered this issue to be non-fatal and must be just ending up
> disabling all SCMI communication. But the reported issue is boot failure
> which sounds like another/different bug and I would like that to be fixed
> first before we push the workaround for the reported issue so that it is
> not ignored.
> 
> Has anyone analysed why the absence of CPU clock results in boot failure ?
> Are you running the upstream kernel itself ?
> 
> 

Hello,

I'm sorry, I seem to have misinterpreted the original user's messages
as having been a boot failure. Upon re-reading the logs, this doesn't
seem to have been explicitly mentioned. I therefore assume this wasn't
causing a failure to boot.

Sadly the user isn't in the IRC channel at this moment so I cannot ask
them further questions.

I have tested this out on my own RK3566 based platform, and found that
we get the following:

$ sudo dmesg | grep arm-scmi
[    0.247134] arm-scmi firmware:scmi: Enabled polling mode TX channel - prot_id:16
[    0.247526] arm-scmi firmware:scmi: SCMI Notifications - Core Enabled.
[    0.247760] arm-scmi firmware:scmi: Malformed reply - real_sz:8  calc_sz:4
[    0.247773] arm-scmi firmware:scmi: SCMI Protocol v2.0 'rockchip:' Firmware version 0x0
[    0.247920] arm-scmi firmware:scmi: SCMI protocol 20 not implemented
[    1.545441] arm-scmi firmware:scmi: Failed. SCMI protocol 20 not active.
[    1.562958] arm-scmi firmware:scmi: Failed. SCMI protocol 23 not active.
[    1.565676] arm-scmi firmware:scmi: Failed. SCMI protocol 22 not active.
[    2.094446] arm-scmi firmware:scmi: Failed. SCMI protocol 21 not active.
[    2.103474] arm-scmi firmware:scmi: Failed. SCMI protocol 19 not active.
[    5.586871] arm-scmi firmware:scmi: Failed. SCMI protocol 17 not active.
[    5.593178] arm-scmi firmware:scmi: Failed. SCMI protocol 21 not active.

$ sudo dmesg | grep clk
[   18.255901] panfrost fde60000.gpu: clk init failed -517
[   18.686720] panfrost fde60000.gpu: clk init failed -517

The system does boot, it's just awfully slow. This is not a boot failure,
but arguably still a pretty bad failure mode to find oneself in.

Sorry for the confusion this caused.

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
