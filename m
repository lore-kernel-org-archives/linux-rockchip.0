Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD2CFCCD183
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Oct 2025 08:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AjLWTjKDCW3o0vT5TVDr3eJP4cShi0rjYm6CRjoef4=; b=dMuzQm5s7x4Wje
	5EOV2tRFjc8cscIPHb277hMOUfsvSnLvSjMmQyi53DwXHeNl5LhrC+GExBm387qiQfrEa4smT2cz6
	Z/1oTvJPIr+nCsmcTnZaJ6sgCFwDW20pWfPvS1SOBI/bOlR3S2hXzbUQSRoAh7W0nlGHwVskngTO1
	jvMnsII8LQJ5bN41KcoAMIU57gCPrAzus8VluAUM9dMC2/x43zyB4T6s50fJBCFSJcYtpn4bm9CgC
	aqqhxhKgOFlF716mZA2G7uVWnaD4Lju4OOhXjWkr6+ZqxLhKsiPxM8fAtcAP++V0G/BG0CNspBytY
	6fyK1RXUK7dUlpG3WG1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mJT-00000005YtE-0N10;
	Thu, 09 Oct 2025 08:47:51 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mJQ-00000005YsE-0QFC
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Oct 2025 08:47:49 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-4de584653cfso11436111cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Oct 2025 01:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759999665; x=1760604465; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q7z3HsSENHtLBs81iROjgJgytmIxb+jEUUPbgM1LeHQ=;
        b=hCx9Obo0m17/1vRQsiuLRkhnIR7Z7a4wlfMJ6Z3n8gmGYpirMCS/Dr2mqVRHLeuuRT
         Q74eM0RAQkbCmgJ6t18qxm4rQ7WRBaszuhaL9R5TwIqQKxhzuS83VOu94hmThu6umPDf
         6rgjYBbBUPXxMDIrQYU/SrQqlIY5DKrJcBzOMujGHwFyFrX2VqcucE8SHu2el9iw5DJM
         pjGUZLsn12YDrTnGAOYzBsZxBOUrSXTsrlIoJS5ftgmVMYxSIPJMnttPZCD1zkyv2T32
         NqNBWuyvWr59ZQiVrFvRmsdiZd885s9vhj2GIjkIVZ2TjtYBBQe1HS5csQK1j08yJWf8
         wrog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759999665; x=1760604465;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q7z3HsSENHtLBs81iROjgJgytmIxb+jEUUPbgM1LeHQ=;
        b=Jbl26cQEK76wf5lGELVttAOQjQUruiK86XmN6KOnzh4TJJmCknpk2LM4CEzEvjfX4+
         ZDsUr/iO/5JLxAuQKi03TA1QNwb74IfTbsIpQCXBGF1tAAZDAqXrEIwBbTBwAwe2vh+v
         wmwFEm6fyGvjbwctyb+HKbdkrjuBUxmjpt8T2t+pCftU/qPeMAqwbrRuqeV9B/9rZvMy
         ncaffHaRq7dnOV3FuN7E5ZhXCrEHiR57xQSOK7jPUGV7Ap9k5FBoeqpsYHdv3fv/kFW5
         tUVHdBnobD6+eJKvOH+8F6zQMXcnQ1tjJvHGEKxzUyqC4+phhYNQJe/wb7rOsXRaPTbo
         qr4A==
X-Forwarded-Encrypted: i=1; AJvYcCVxadKzK6rR9etg94Z+wAPST2ZaVVq7cJCTrJgT6Qws4aZZ6h420XzdnE1LGZDYzF5NdrOfQHoyMUMiumc7AQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbjhshwpEDtZFVayvfXdCXWRwrI2jEia6TGqG9AqECLoLZbNwn
	ZYOmrtecmpeh76fPartfj5O/16XZuFxXFzHML5qdpFy40gQkTsWNQMMA/JpPvUQwXpcw1HvMIcn
	jCzQIshaZJ+1+rSgHUdXowbMsYeaHZCk=
X-Gm-Gg: ASbGncvqEffsplVj5fCnXK4UduqlwcltTxRIiVwY2Z5VQakKgAbUgK0AoXu33RPc2lc
	R4c2oXXtDrrZ3H4wH9pPqATtyVwxYJ5gEg7NtFBfbpeAg3dgHzdn+M4iiYPD9f+HNZeM1rIwZvN
	bFoFOo3I9a1qDy+u7dUQkEACEhHDWLfWhOpPXH0tB2CJwQtQi04WRAxD5QFkcJMe26mABCLLMSv
	eFk8qPrLxTgLTEhe+AhQY4yFwnToqn0BuBmREEX79Imqb+l5xSGgZte7x5u9B5z
X-Google-Smtp-Source: AGHT+IHZCtZVjbJCuCzfkElGQPsDTCoF7VlhCNJzNSACyEYAtAeKcSTNYi1LVTtefd/CGrEn+damOcQNkjX8el2dbLs=
X-Received: by 2002:a05:622a:315:b0:4e0:3cdb:d1df with SMTP id
 d75a77b69052e-4e6ead5c32bmr79013101cf.61.1759999665491; Thu, 09 Oct 2025
 01:47:45 -0700 (PDT)
MIME-Version: 1.0
References: <20250929065714.27741-1-jjm2473@gmail.com> <20250929065714.27741-4-jjm2473@gmail.com>
 <d8ad476c-d0c7-4e97-9e76-540a539ffb52@lunn.ch> <CAP_9mL4ofig-X-w9wx1A5D_eVXROo6AVFBSwp4mh=kj7webpPA@mail.gmail.com>
 <7e219aef-88a0-4184-9553-30dcbc8dbd79@lunn.ch> <CAP_9mL6utQjN_2EZ4vs3K8jzcxHxvKWNTNEXZ9fAx4HuA=DNXA@mail.gmail.com>
 <a0501abe-d86d-4f3a-9d55-c842bfafc190@lunn.ch>
In-Reply-To: <a0501abe-d86d-4f3a-9d55-c842bfafc190@lunn.ch>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 9 Oct 2025 12:47:36 +0400
X-Gm-Features: AS18NWC2IGY_8LtLG8W701XYpA8RXhJynROI-cfRLT0k9gdCMgBYHBHaIfR9D_Y
Message-ID: <CABjd4YyqL1YouMt97MA=CLWJmcFMMr+=xpOKOd6YtAC6jQAO=Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
To: Andrew Lunn <andrew@lunn.ch>
Cc: jjm2473 <jjm2473@gmail.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, heiko@sntech.de, quentin.schulz@cherry.de, 
	kever.yang@rock-chips.com, naoki@radxa.com, honyuenkwun@gmail.com, 
	inindev@gmail.com, ivan8215145640@gmail.com, neil.armstrong@linaro.org, 
	mani@kernel.org, dsimic@manjaro.org, pbrobinson@gmail.com, 
	didi.debian@cknow.org, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_014748_140955_6D0A184B 
X-CRM114-Status: GOOD (  11.45  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBPY3QgNywgMjAyNSBhdCAxMDozMuKAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiA+IEkgYWxzbyBub3RpY2UgdGhhdCB5b3Ugc3VnZ2VzdCB1c2Uge3R4
fHJ4fS1pbnRlcm5hbC1kZWxheS1wcyBpbnN0ZWFkCj4gPiBvZiAge3R4fHJ4fV9kZWxheSBpbgo+
ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2U0ZDMxMjdiLWM4NzktNDkzMS05ZWEwLWRl
NzQ0OWJjNTA4Y0BsdW5uLmNoLyAsCj4gPiBidXQgSSB0aGluayB0aGlzIGRlcGVuZHMgb24gc3Rt
bWFjIGRyaXZlci4KPgo+IEl0IGRlcGVuZHMgb24gdGhlIGRyaXZlciBpbXBsZW1lbnRpbmcgdGhv
c2Ugc3RhbmRhcmQgcHJvcGVydGllcy4gQnV0Cj4gYXMgcG9pbnRlZCBvdXQgZWxzZXdoZXJlLCB0
eHxyeC1kZWxheSBhcmUgbWFnaWMsIG5vYm9keSBrbm93cyB3aGF0Cj4gdGhleSBkbywgc28gaXQg
aXMgaGFyZCB0byBpbXBsZW1lbnQgdGhlIHN0YW5kYXJkIHByb3BlcnRpZXMgdG8gcmVwbGFjZQo+
IHRoZW0uCgpGV0lXLCB0aGUgVFJNIGZvciBSb2NrY2hpcCBSSzM1NzYgc3BlY2lmaWVzIHRoYXQg
dGhlIHZhbHVlcyBpbgp0eHxyeC1kZWxheSBjb250cm9sIHRoZSBudW1iZXIgb2YgZGVsYXkgZWxl
bWVudHMgaW4gdGhlIGludGVybmFsCmRlbGF5bGluZSBvbiB0aGUgdHJhbnNtaXQgYW5kIHJlY2Vp
dmUgY2xvY2tzLCByZXNwZWN0aXZlbHkgKHVwIHRvIDIwMAplYWNoKS4gVGhlcmUgaXMgbm8gbWVu
dGlvbiBvZiB0aGUgYWN0dWFsIGRlbGF5IGVhY2ggZGVsYXkgZWxlbWVudAppbnRyb2R1Y2VzLCB0
aG91Z2gsIHNvIHRoYXQgZG9lc24ndCBnZXQgdXMgbXVjaCBjbG9zZXIuCgpCZXN0IHJlZ2FyZHMs
CkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
