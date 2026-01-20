Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED90AD2ECE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 13:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymURt0lpZWx9YrJEMIaEZW5QQaTVEfl2vJUbJRXyP34=; b=aPKKIlSyMEGwiq
	qvs+ppdZ/VOqeUafTvRPAHyKwHM9bfAZ3i8YXta2hhrqRkYaXS0Qi7gnJ0upa+Ubq4E30rkwmPsVE
	bSlixfD64Vex4j7INTJvRuUA2y4v+O5BmZrB3dBeUu6C41xlhrOTqAbJ+PvgHmCsugXPony8Zo87b
	TWEzxo2/ISEcD2x0i+rh4SWEeZVXEja6J3lnQMR7lKTjTvgpnQ30npmdhXufE7JXUq0qq4qrpUywA
	bhpkEEqZJefOEjYKPtMKk0jYmLm/cXjwS3PrJEQ8NWGxaERw60bapS8XziZAGDcmXZ2VzI/5EcZ/a
	REgw+prbLw6u9D32q64w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viBZV-00000003te4-03kp;
	Tue, 20 Jan 2026 13:15:01 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viBZR-00000003tcY-3Du5
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 13:14:59 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-50146fcf927so54901631cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Jan 2026 05:14:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768914896; cv=none;
        d=google.com; s=arc-20240605;
        b=CdVfpHjzgIzVKTtBm8E3drRINDr8qME9s/DtR4jsidmOzcXEBOKsTvW4MTgAy0NNnl
         f7QM+/iXLd9xlJB1vq7c2Mr4NXA5zzVMfYlPk9ZPet5sDri8z702naE0QhCnDPLqoha9
         fYOGgaRhb31ohoMAjlpbLcbdWgcsASTEye7/3dxgOOHXuf4D+ustw8P6VWsp+CEKnHo0
         c888iZqPt48rncV5MHKA8nDdCyIqas9djGNq42MbF7JYr6/LzXcdPtYEIRGC3iYWx3gq
         J0GQLT5yRNpYquMjoEdUntC81Z0iPkddRYbGtzj+U/lON1t3rmfK8HlgVzeGrFJwTNWe
         T0Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=61FVTvC+OPYsLfCnTMn5A70RhUk+8hVfV9yJPBCxid4=;
        fh=ANaPeZ9V2/UiE75QRhywc2Ku4BAv05ENhp1qiyxGPCw=;
        b=k/gB/T0qdnxzrin3jCr08cia+vuKBlGmB8aDyfY0rMeO5s+nFC8RojBKguXNF4sDDp
         SoxCvne92Jh1hqm4A+bE1/NsY0bbyJO5EI0EbilodAhbV3VhuY1ieMUValVb2HqbY+bG
         R2bnWALP6II7wJods1CqHR5ZhJ55AdPgh2+gwFC61WbbmZL22v81yLoh29VsHIZoxNmm
         tE9dhgn9KFPXw7lec//UpnUQMg3t50e42Ow9g/ou/tssi/0f3fSN29BaRL/L1iJwx9xo
         A/aYQf+7XefISP/oMxjsyNRz+CEQFybvtXzNA+7fUvg9b3i2a4cjPpspEj0U+re/KUmL
         kv1w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768914896; x=1769519696; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=61FVTvC+OPYsLfCnTMn5A70RhUk+8hVfV9yJPBCxid4=;
        b=TZXcHwp9jI3UYYfAqUcks2PTTnhQSzHA14/hwjddXS2pUtEopNP1AESjYaVLY/4iH0
         TeZiaA+1x+8uqLMUUkQqQZkVI63Z5z37vgpN9f+wVrfKgeWAneNIxLw8h5Px/t2O/1WS
         pi10jAzsJRHsSZyo/P6gnN0R9O5ZQc6ak9nlu0OAQDoZ+0shVWYhzWzd45l6duL40HRx
         JTMccDIrx61iGbD6ep+o7jqm+1OExjlqTC7zBEgQ+UWjS/FkdfiZOdf0IM66gtLsXTXL
         OTxQ7q0zjnO0mupXANicshMrwe+Ul778F2JAzhdMRgzH2G7iEGVg6WMG8/GHERiVc2lz
         WD7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768914896; x=1769519696;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=61FVTvC+OPYsLfCnTMn5A70RhUk+8hVfV9yJPBCxid4=;
        b=Ie3MMppjaSYi6+HkGHeY8DahmENLJIBR6u2Z3h5uQUJ40weajstSZLSjUKPF4fXmuF
         ENxsK6lveuMYkWwB9z72ungESiOTs1RYzp8WS6CyYmhUmOkTWdhFq+Y/3Zcnm7O1V/sf
         oioCkixzU5uxiSZa24GsH34HzDzAiZIaLySOdPC1AIsTWoeMQq19uFhjhvs6y+DyhIpk
         mInGLrzIbBJAZOop0emcmeyrUqqnt6iebsMN3b+acH9waTCKK9CQQ43cilzSINuDHk3r
         ZK7i4XZXpyoJaADOxWUX5cJfxg5Rca0POR8jw1r8/RNUee+fMoGui+Jn3Hjn3a9gjGg7
         r4PQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOv0SZbyEpVMqXITiofUiMjYhzvxl3vGFaPmmvPmiRLmOe9HVSIyDWRwnzPNWTJXLBCG99xTCxyeGUKO01vg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzIAmv84n9Ggdi+RQkSBZGTXGZ75P5pdNSEHM4Y3flxdWulv2qj
	0+m4uK2K05cShKvYZMlaNPsxZKbSpK1MkTK7r3Z5LdVSX8eOwq3PjH3QKyjwiHJJPiV+2VkJRYR
	H67RJ9oewnffNfQGMj1AUy1u1wdDqzqk=
X-Gm-Gg: AY/fxX5LRF2xj6WM2hZ69B9OOfxPagYb3TzmTY4zoekwnux0kVmebSlPmWg4yGSWXR6
	Whe5wGbvefVvKG5AJFVZs9gK2fTH02ZDNh/4WAnVp4oMF+usbH4tVE3y22BXdPdJhESy4XCQH/e
	CpojRmCGylrETZUhGWbxuu/eGxbZ8eAIvxOt5rt/3i18tFsI8KS3EaYvWi7SP6u4we6adi+HpMJ
	YiZ9CFWY1keR9M6OcgaLq0cBON1tmQJ53AZXpV6hxviMYnibFhtkSXvvylEp22hL3QcBBXLkEUT
	b6m/HgRHdKJlGhYe/bxbO/i47a4PdLkghaQ0ZA==
X-Received: by 2002:a05:622a:204:b0:4ff:a8c1:b00e with SMTP id
 d75a77b69052e-501982dcb6amr257878141cf.2.1768914896054; Tue, 20 Jan 2026
 05:14:56 -0800 (PST)
MIME-Version: 1.0
References: <20260120-ufs-rst-v2-1-b5735f1996f6@gmail.com> <9e51b504-e0f0-4d17-baa2-387339507c86@cherry.de>
In-Reply-To: <9e51b504-e0f0-4d17-baa2-387339507c86@cherry.de>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 20 Jan 2026 17:14:48 +0400
X-Gm-Features: AZwV_Qhp14S3f8jxRdEKOTb8-WUOX2RQGlmlwHiEcT4hA3FpWfhKr4Hgbt-e0zM
Message-ID: <CABjd4YwAMbH21jcjhks7ThoXzcF8GeOzBPYDvN+7cip0iA6stg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Explicitly request UFS reset pin
 on RK3576
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_051457_822637_A5656093 
X-CRM114-Status: GOOD (  17.77  )
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

T24gVHVlLCBKYW4gMjAsIDIwMjYgYXQgNTowMOKAr1BNIFF1ZW50aW4gU2NodWx6IDxxdWVudGlu
LnNjaHVsekBjaGVycnkuZGU+IHdyb3RlOgo+Cj4gSGkgQWxleGV5LAo+Cj4gT24gMS8yMC8yNiAx
OjUzIFBNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IFJvY2tjaGlwIFJLMzU3NiBVRlMgY29u
dHJvbGxlciB1c2VzIGEgZGVkaWNhdGVkIHBpbiB0byByZXNldCB0aGUgY29ubmVjdGVkCj4gPiBV
RlMgZGV2aWNlLCB3aGljaCBjYW4gb3BlcmF0ZSBlaXRoZXIgaW4gYSBoYXJkd2FyZSBjb250cm9s
bGVkIG1vZGUgb3IgYXMgYQo+ID4gR1BJTyBwaW4uCj4gPgo+ID4gUG93ZXItb24gZGVmYXVsdCBp
cyBHUElPIG1vZGUsIGJ1dCB0aGUgYm9vdCBST00gcmVjb25maWd1cmVzIGl0IHRvIGEKPiA+IGhh
cmR3YXJlIGNvbnRyb2xsZWQgbW9kZSBpZiBpdCB1c2VzIFVGUyB0byBsb2FkIHRoZSBuZXh0IGJv
b3Qgc3RhZ2UuCj4gPgo+ID4gR2l2ZW4gdGhhdCBleGlzdGluZyBiaW5kaW5ncyAoYW5kIHJrMzU3
Ni5kdHNpKSBleHBlY3QgYSBHUElPLWNvbnRyb2xsZWQKPiA+IGRldmljZSByZXNldCwgcmVxdWVz
dCB0aGUgcmVxdWlyZWQgcGluIGNvbmZpZyBleHBsaWNpdGx5Lgo+ID4KPiA+IFRoaXMgZG9lc24n
dCBhcHBlYXIgdG8gYWZmZWN0IExpbnV4LCBidXQgaXQgZG9lcyBhZmZlY3QgVS1ib290Ogo+ID4K
PiA+IEJlZm9yZToKPiA+ID0+IG1kLmwgMHgyNjA0YjM5OAo+ID4gMjYwNGIzOTg6IDAwMDAwMDEx
IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwICAuLi4uLi4uLi4uLi4uLi4uCj4gPiA8IC4uLiBz
bmlwIC4uLiA+Cj4gPiA9PiB1ZnMgaW5pdAo+ID4gdWZzaGNkLXJvY2tjaGlwIHVmc2hjQDJhMmQw
MDAwOiBbUlgsIFRYXTogZ2Vhcj1bMywgM10sIGxhbmVbMiwgMl0sIHB3cltGQVNUQVVUT19NT0RF
LCBGQVNUQVVUT19NT0RFXSwgcmF0ZSA9IDIKPiA+ID0+IG1kLmwgMHgyNjA0YjM5OAo+ID4gMjYw
NGIzOTg6IDAwMDAwMDExIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwICAuLi4uLi4uLi4uLi4u
Li4uCj4gPgo+ID4gQWZ0ZXI6Cj4gPiA9PiBtZC5sIDB4MjYwNGIzOTgKPiA+IDI2MDRiMzk4OiAw
MDAwMDAxMSAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAgLi4uLi4uLi4uLi4uLi4uLgo+ID4g
PCAuLi4gc25pcCAuLi4+Cj4gPiA9PiB1ZnMgaW5pdAo+ID4gdWZzaGNkLXJvY2tjaGlwIHVmc2hj
QDJhMmQwMDAwOiBbUlgsIFRYXTogZ2Vhcj1bMywgM10sIGxhbmVbMiwgMl0sIHB3cltGQVNUQVVU
T19NT0RFLCBGQVNUQVVUT19NT0RFXSwgcmF0ZSA9IDIKPiA+ID0+IG1kLmwgMHgyNjA0YjM5OAo+
ID4gMjYwNGIzOTg6IDAwMDAwMDEwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwICAuLi4uLi4u
Li4uLi4uLi4uCj4gPgo+ID4gKDB4MjYwNGIzOTggaXMgdGhlIHJlc3BlY3RpdmUgcGluIG11eCBy
ZWdpc3Rlciwgd2l0aCBpdHMgQklUMCBkcml2aW5nIHRoZQo+ID4gbW9kZSBvZiBVRlNfUlNUOiB1
bnNldCA9IEdQSU8sIHNldCA9IGhhcmR3YXJlIGNvbnRyb2xsZWQgVUZTX1JTVCkKPiA+Cj4gPiBU
aGlzIGhlbHBzIGVuc3VyZSB0aGF0IEdQSU8tZHJpdmVuIGRldmljZSByZXNldCBhY3R1YWxseSBm
aXJlcyB3aGVuIHRoZQo+ID4gc3lzdGVtIHJlcXVlc3RzIGl0LCBub3Qgd2hlbiB3aGF0ZXZlciBi
bGFjayBib3ggbWFnaWMgaW5zaWRlIHRoZSBVRlNIQwo+ID4gZGVjaWRlcyB0byByZXNldCB0aGUg
Zmxhc2ggY2hpcC4KPiA+Cj4KPiBXb3VsZCBoYXZlIGxpa2VkIGEgbWVudGlvbiBvbiB3aHkgcHVs
bC1kb3duIGluIHRoZSBjb21taXQgbG9nLgoKSW5kZWVkLiBIZWlrbywgaWYgeW91J3JlIGdvaW5n
IHRvIGFwcGx5IHRoaXMgdG8geW91ciB0cmVlLCB3b3VsZCB5b3UKbWluZCBhbWVuZGluZyB0aGUg
Y29tbWl0IGRlc2NyaXB0aW9uIHdpdGggc29tZXRoaW5nIGxpa2UgdGhlCmZvbGxvd2luZz8KClRo
ZSBwaW4gaXMgcmVxdWVzdGVkIHdpdGggcHVsbC1kb3duIGVuYWJsZWQsIHdoaWNoIGlzIGluIGxp
bmUgd2l0aCB0aGUKU29DIHBvd2VyLW9uIGRlZmF1bHQgYW5kIGhlbHBzIGVuc3VyZSB0aGF0IHRo
ZSBhdHRhY2hlZCBVRlMgY2hpcCBzdGF5cwppbiByZXNldCB1bnRpbCB0aGUgZHJpdmVyIHRha2Vz
IG92ZXIgdGhlIGNvbnRyb2wgb2YgdGhlIHJlc3BlY3RpdmUKR1BJTyBsaW5lLgoKPiBJbiBhbnkg
Y2FzZSwKPgo+IFJldmlld2VkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hl
cnJ5LmRlPgoKVGhhbmtzIGEgbG90IQoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
