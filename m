Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AD0606A321
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 11:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=b6H3lD9m;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=fSxSx+L2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EKo+FH7QvHHHiYg1YNQURH8a1xY4ixQcV6ZPsc1yBVs=; b=b6H3lD9mB9LvJccpgixqPfGJSL
	kEHbKLAQMP2YP09jUSEVoVX8uO0WRsXcz9mr+TKdMtp9wasbw0nbxtbxZNuk19z2JK7muHYZt8vRy
	qoDUN1enESKHlbCGHl02Fikx04TmGKlJve/Bdj90ohQ7+X2sj3ES+WC21ROe/t8mf/cAZnrLU0vAS
	cOei/CqsQTRAtf18pkVXJB8b6q2IWH/f4N/O/rWfCoq5RMcAHo5ay3S0I9VqADsNwvARy6QVXtRU0
	5GapexNAMxJlLYN2+jlcSkHyGpOGA+GVKbrpMEPUovOno5pPRot8sHW9kiRnHhW3LTI1E6NNDjVcN
	TqIRa1EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVp7r-00000006RGQ-3Qga;
	Tue, 24 Nov 2026 11:55:55 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVp7k-00000006RDI-2e3B
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 11:55:49 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-4ad6219f7d8so3757534f8f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 03:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795521346; x=1796126146; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vnwt3Hg75Jqhq/RX3EnfxRob7Sm62Nv/9HL8t2YUaCw=;
        b=fSxSx+L2wMbO3E5gkpTlZAhROlihqaMemJR2MBGP/xKl/F25PHdcjAbeBx1i75nwVc
         NIfL6jyb1pc6Fy18IIkcgO9KSCS96PP+/inmmGkfTJM0FVkmUzcO15+/V9b92PjkIPl8
         0BjoqB2WEqjEvngimq46wCOOhNSA3Su+Ct41iKtFfO4G5fj4eRB/F+t22gFQGFAXCwln
         akdBxVFz62j/VVMh60gpB0+4n7NXrzguP1S4RlmAPilEcZMOC4K8rJdsvAde05UQqDRK
         sioJKmovMhYcgXHNc/Ho6qdcQkg240XbNT4PhC/WBtaB5un/Ew7j2joTfR3Y4IN0pcwk
         aE5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795521346; x=1796126146;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vnwt3Hg75Jqhq/RX3EnfxRob7Sm62Nv/9HL8t2YUaCw=;
        b=NOefpn/9BFWOL0K2SsqkYCieCJdSj8ZSeg8EKa9YTXhwnhcQCszxdqbXX9z0u6A8Fl
         40uqsIiYJ3wIJE77clgh3sBf306asatGllh/di0I1kkjEqIm2Fk/UgUE/Kzvu0t8Zz8g
         7zxQighh2te8A8Vw1cMZM7yF384/rV3STfez0PcGvsJH5hhUl5EJw05XtbrGBH4ciaey
         Jrj11GrO0erLbllbs3wVG8zLaGvv2zJkW0oyndoWfzAklGQy+8qumKePeYCfOA1oIcWh
         Q1qgscWoIYbj/9rMsIM9c6hHi5sX9dwtDLALMJsDSvBUni25CcauBonJrcd+MVeNtn6q
         VPhw==
X-Forwarded-Encrypted: i=1; AL+hErEHnrIb82jgOp2pcBZ3utCOxTWl47IMA1WDCkae0zFlAv3cxY4M4s8WqVrhM5OxjPcl/+3EcMsivDxLI8VSew==@lists.infradead.org
X-Gm-Message-State: APuU4Z9qnRMBBR4AqAe1hniS1RC2IgNWkKOBVLtKNP8smYKhKKpAYXPD
	kecQ6ViN/k6CURygBZ5oCuq2+vhBfvlFZ5tQq1se/IOBtbtABkzmEvNbN2LKFzY68hw=
X-Gm-Gg: AZFdTZdn0LL7R6gUrfUTbKd8bxex84ioadVYyw3oYCaY0jG0e/FIMz7GmVFD3LKdnii
	4jCph3vMT6dAzQxz4AjACmB2Ncgck3cgnM7c2PPglj8NjLPxEIJV1cclj0mts3iFAnyFjoejZjN
	klQnBBiKNffnehgOE+Z9GH8pDKizcby3C9ES3Fk3H7OT+jKYnaJhBbuPUmU6qTMQw15lYETxO2M
	yb8qukVBpEWYXqTEP2BZtJ+QtmveIZencc9OoZDF8o9G/zYjT2kTL4r5tohNKcWOpHeLUlap9LP
	9lrDFq2UTJ5XNrUBqvUNyoyFANiRoa/O6D4A/Cb3UMYuEOMIUyCFzLBOhdNKZ0VLDJVoyPp9oYG
	16EVPUIVfZ7elsf4cSwV8R11F5+jYccWPUTH7F7lszHklZEqL5VGo8WRPM/Gxj6aohmSfS5FAML
	I84ASexDypkMIFhARmtMgWSOoZitPi1BbEIenQiIQKo1mRJout4Mskjqv364g1v4xA00DSLd0qw
	EcqEsMeoT75oocTDKSUny7BsZ3WRcRKUuvs95bjusCfYtZftwHGyzk45x3cxXM8pO/S9kEko18o
	ZHQDbtreD/KeLaAIPZcSMYVFTAZFcEwxa8AyYfObbZcr+jrbdGfDkjCVg+x58oO3e82dBsyRYMm
	3GyxUU7PI6mUd6GAQltawkfI=
X-Received: by 2002:a05:6000:428a:b0:4a9:dcdb:2e11 with SMTP id ffacd0b85a97d-4abb8406ea4mr29382891f8f.41.1795521346404;
        Tue, 24 Nov 2026 03:55:46 -0800 (PST)
Received: from ?IPV6:2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183? ([2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6b110d56sm26566053f8f.40.2026.11.24.03.55.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2026 03:55:45 -0800 (PST)
Message-ID: <bc4234bb-8901-4d0f-bbf9-66f9715c11a9@baylibre.com>
Date: Tue, 24 Nov 2026 11:55:43 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 8/8] arm64: dts: rockchip: enable the NPU on
 rk3576-rock-4d
To: Jiaxing Hu <gahing@gahingwoo.com>, tomeu@tomeuvizoso.net,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com
Cc: royalnet026@gmail.com, sidong.yang@furiosa.ai,
 ulf.hansson@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, chaoyi.chen@rock-chips.com,
 shawn.lin@rock-chips.com, finley.xiao@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net, leonard@lausen.nl,
 vlwwwwww@gmail.com, jeff.hugo@oss.qualcomm.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1795478392.git.gahing@gahingwoo.com>
 <0bcd73278a4c7a0cb2e1b8bdb9aba306355384cb.1795478392.git.gahing@gahingwoo.com>
Content-Language: en-US
From: Daniel Drake <ddrake@baylibre.com>
In-Reply-To: <0bcd73278a4c7a0cb2e1b8bdb9aba306355384cb.1795478392.git.gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_035548_692149_1A598F4E 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 24/11/2026 00:01, Jiaxing Hu wrote:
> The rail is switched with the domain by commit
> b1bff9ced657 ("pmdomain: rockchip: manage the RK3576 NPU domain supply")
> in the pmdomain tree; without it nothing holds the rail and it is turned
> off as unused.

You can omit this part of the commit message. The dependency is stated
in the cover letter, and domain-supply is standard enough that it
doesn't need specific documentation.
> npu-supply is set because the binding requires it; no driver uses it.

So why does the binding even exist? Is it because it will be needed for
implementing voltage scaling in future?


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
