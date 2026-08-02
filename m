Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECA8FC55171
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Aug 2026 18:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XugwvvI9E/3DHBZMlk4Oa66l0DmBPUsswEWID0dfwjE=; b=g2Xg2cXGlUc+PA
	cteJQ0JrkUotsAeZO5K5KBfT3qZTUjrei/Qf9MGnqmp/8dFKW/SYuWsujBISSWLRUZlUgi/snsax+
	iCoYAzpB+7gMqG+w2O9Lo+tCDxllnVNlKw6k1oCvZjY62Z5xgZ+rMlQ5SGisOpO8aP6cGSrEDtaqr
	ALmjeI9cqe1s5rCgImiSkBFUJikg9SawNl9j3ERncS1FRK1nZRTx5PuVhL92zVVFw4zoJVGNa0v60
	9UNHLdOZasb8EvlqpjHccAzsY3cMMYmYWK1m7P/S3UcoewCY5ExnHk/33BQc/jHruGyiN2HtlQRZK
	FPiq+zqgHU9P31boEmYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqaso-0000000FvqN-3KPI;
	Sun, 02 Aug 2026 18:25:58 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqasm-0000000FvpN-2gPC
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Aug 2026 18:25:57 +0000
Received: by mail-pj2-x0b.google.com with SMTP id d9443c01a7336-2ceb5a39c48so8716825ad.1
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 11:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785695155; x=1786299955; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=F7s3GZYSnT0cjOvsmd+6nT8896EOTxni+8aCua2o/oc=;
        b=ZivFzCHugaAxc/wqeCsPDqBC4Tgcqmv3FcCGZ6dbz9CLD7WG5l4MwqBdiT5Uyvlugd
         gML3OPrHyD39PjYkMHDNq1ARR00uf8qXALk3eB047ecDjj+di+d3Tjede8svJvSOTkk6
         fji8yYHltCuclWFCpZ8gp+WO2SO5BEi9CahSGuLtTg/Cv1MU5qgYzxM5Ahhfvf7ei7/V
         s/BcaqWAdEzlbrHY1qJDEZdDZhg5fv94OSHT2kl+C6c8qZppJ+i+RpZeLhiJl75d3jax
         vhY1pQEVgVkRSUqcDZYJSPS4Hhr2GvZ2CtuU3smrQmBjBUuiPpLlVg4Jlvj5oJWZ7+3O
         x8dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785695155; x=1786299955;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F7s3GZYSnT0cjOvsmd+6nT8896EOTxni+8aCua2o/oc=;
        b=l29GSRrxqssAZP8QEdInO44LvM/YNENnFzo3lCvceHvUWfiIclB8FSp979GhouqhVC
         uAr+0/H2p92cKdK2LfYMqiOb2LU+6FAS81wSNnrPgRxs2d/eX8tLB3DC4dfrMM2vSd+Q
         SqJ0IB7cJTKEkFjpeZU2Xh7mDHC1Ss0cg4GVzqVIyX6ZRDnJg0oPu7Wsfv6QYKt/zkE/
         CIeqvbx116gmnoucero1OHUpZ5RwpE2QG0ynVpExm6orIb7AK2PtqCI5wpuniOOMHSav
         Ob0P9F2bctjV/eC42t4cL2NWEaUjE75ZGXmC3ESVKDSAfmTK/OWC22N78kltG7uITnLH
         /4FA==
X-Forwarded-Encrypted: i=1; AHgh+RpO9ivlho0PvU9BK5tXBkN1dpblgNkYiZVW8DzCgX5czHiEadQ0NF/yCZaYHjRTQB1VAaUW+pd0LEsNXW3eNw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzo+JLdP84EOqOFbbL3n1TDMYkHlm9MjCwC2SBvtbJmYvL8q7Ld
	4DklFWD102KEa7gk4FwXn5pewMgUNI+vDvi5IKXiz+aL8HABXrB4PI1R
X-Gm-Gg: AR+sD12vvzYsGjqCtVRpTL6chv70Su4ZAg76pFlSOaSCb5I6xBA4dlBTMC53ALC/XEL
	KgMCynLboqnvF0gsiZMlnQAQTN8NdLk5m50PjNFZ825EFbPxKw2ag8Chex1V9GgZ+RG7IRK96q6
	6KBYL3ddMuPHJOKaq4GZ9vG7cGMUht/WGc/PB/dzbvWmrke2D2vgaGoOY3BNh5QXXA2tq/QR94g
	WHIjkDc3P0NSrmCVyVdEm8MavdjAbZCqnRYro/pcWl/ponDIgYVsFui6+2Us8lt8z4xJwxy0+Dy
	xBMKWuzhQL0KSeF6sfUUoH+DLkSk4PRV6zLAZR3DnCROyeOe7FzFGrOtwQGFT4ViTwOlVs0kTTN
	uqMb6SEK1/qsOaVh1wYykgN6u4Znqmq0xvX1F6aulfpJt1/4y1Hs0Bio+Y8QvaMAr5/uJILMDRi
	SRUlxRJvDHhW9f/Gr5cTMBVLPO3xiKlzay9W6WZdkxCeBN3GA5B+K08RjVsuYE78y6
X-Received: by 2002:a17:903:b4b:b0:2cc:dacc:fe27 with SMTP id d9443c01a7336-2d0522984dbmr69929465ad.30.1785695155310;
        Sun, 02 Aug 2026 11:25:55 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2401:5a0:1000:10:233::14])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04b0eb7b7sm27443245ad.39.2026.08.02.11.25.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Aug 2026 11:25:54 -0700 (PDT)
Date: Mon, 03 Aug 2026 02:25:45 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org, Jiawen Wu <jiawenwu@trustnetic.com>
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_06/10=5D_net=3A_pcs=3A_xpcs=3A_add_?=
 =?US-ASCII?Q?ANRESTART_support_for_SGMII_link_recovery?=
User-Agent: K-9 Mail for Android
In-Reply-To: <2886b24e-1c3d-48f7-8b22-9620fa0404f7@lunn.ch>
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-8-coiaprant@gmail.com> <cfddb747-11d0-476d-8402-e0886cca582e@lunn.ch> <CALj3r0i1TCTgvm8FrJAJqmZgoJp61NCxc_xmVYaDFd-gh4H=7w@mail.gmail.com> <2886b24e-1c3d-48f7-8b22-9620fa0404f7@lunn.ch>
Message-ID: <2E676CD9-82F3-404A-B24D-27679042783B@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_112556_685163_8FAC69F6 
X-CRM114-Status: GOOD (  17.02  )
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

On August 2, 2026 10:30:52 PM GMT+08:00, Andrew Lunn <andrew@lunn.ch> wrote:
>On Sun, Aug 02, 2026 at 11:11:40AM +0800, Coia Prant wrote:
>> Hi Andrew,
>> 
>> Thanks for the careful review.
>> 
>> > This probably needs more wide spread testing. I would be afraid that
>> > if you kick off an AN cycle, you loose the link until it completes?
>> > You would of noticed that on your hardware, but other hardware
>> > obviously behaves differently...
>> 
>> The trigger condition is: link is down AND an_complete is set.
>
>Ah, i missed the "link is down" check. That makes it safer.
>
>I still find it interesting that this devices is different. Has the
>silicon vendor done the integration of the licensed IP wrong?
>
>> Regarding testing:
>> - Jiawen Wu has tested this on Wangxun NICs and reported no regression
>>   (Tested-by tag included in the patch).
>
>Probably Maxime will test on the platform he has, but i don't know if
>any use the XPCS.
>
>	Andrew

Hi Andrew,

Thanks for the follow-up.

Honestly, I'm not sure why the RK3568 XPCS behaves this way. I don't have
other DW XPCS hardware to compare against, so I can't say whether this is
a silicon integration quirk or something else.

What I can confirm is that on RK3568, the PCS does not restart AN
automatically when the link drops and comes back. Without this ANRESTART
change, the link stays dead forever.

I agree that wider testing is needed. If Maxime or anyone else finds a
regression on other hardware, we can revisit and condition it with a
platform-specific flag. For now, the change is limited to the SGMII
recovery path with a safe condition (link down + an_complete), so the
risk should be minimal.

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
