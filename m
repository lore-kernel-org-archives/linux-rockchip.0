Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB9BBC2D0CD
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 May 2025 12:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2nbO4lsgFDkKqubV/sgbzpk8YrWsYOcI+oKvR+tq2E=; b=fqxPqvncORqwwk
	m6r+SWj9I7pzFCnrq/L0zaWs6T2gLmM6s2xHs9mFb7Q9dfEnPJzQP+VwhxmUiTlimiLp86DGCvJKi
	9j7zWJ+W7qMQCvXFsU1Fqc5SFM9nM0F7FHzLPP6AA8eb8z4QACd25FBeMdemhW4gP3QpFt4DZqygE
	ovysEPHtYO48mLqDHnyD79drYJliZ3sYsxnrXtMq8Q08S7uo0qfoN+2xREb/7JpxUFKQxpEZU7EU8
	O6755re3FOPBmHPFrwWVSsCglv2NLSi+KIikldpbiRJdDGIo2XTfSRxMqDlqx3OozJKpv84Qkvhl1
	u9wZxJKrV7HfQ98yMInw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGGI8-00000005fCJ-2awh;
	Sat, 17 May 2025 12:05:24 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGGI3-00000005fBr-2gPm
	for linux-rockchip@lists.infradead.org;
	Sat, 17 May 2025 12:05:23 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-30e93626065so960937a91.1
        for <linux-rockchip@lists.infradead.org>; Sat, 17 May 2025 05:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747483516; x=1748088316; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=trS5Tf45Q4Q8voIZQsRn1URle1hcyp3FyQgBJHTcYHE=;
        b=kcIST7WXJMpIGfciEzMECcMfAOdlKfhDa68HDgejqO8s7Bj35mXZdTP10xQPswrCYK
         zOOHEqljO7yJYFN1P2b9CRIl/GsTX8Mkn9pfmmrnoQyR31beTlZ8I0Fuekl9kcgGc8J+
         YKjmqg/Vf6S2wqVZCigI8ZEy9EuFtgS//pn6p9Ezcv2tKyhUJEkn0q/PbfHdaOdFuZs8
         eD8Rk6WhbMpal1qiKrbv+NNfAEFK2M3s3XW7sCqrhHSjMKV5ZY3CKNjijU50p5eZfveM
         tSDU78xzO9FBYZIr/5pjaXCGgGp32LYLS0aZhg/Hr/GpiYq/zEKifKAUg2zbM7+WeEoJ
         ljEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747483516; x=1748088316;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=trS5Tf45Q4Q8voIZQsRn1URle1hcyp3FyQgBJHTcYHE=;
        b=DSmHAI6vSrtJVx/FqpSMc7fOngiKBMBzcIi4vP5SExQDCxWDtA4WsfmdbQYOIDZezE
         /T3qd542Df+kUHfilaN7O1XrPGF1s1RGFHttEBWVRVVxOJbPJ8FsGey6TdzWU/yxKI3C
         Hq2YXsbqUvs62Y2TfSu20G1djqVzAuL/O5dh9mndb/ZwecnqTbHQFRvam55V/BH0UO7Y
         pJdFZYPvUFcUigPEqs9RCpxJqupXjMQxJh1K2o/VAA+3KW+rQlPQnThwyF6GXJqzaJrS
         5IMMYe1SJD+f50cpzXe3Lhi7HTIsEVrS5z1Z9fW9TF5TtWAvoiopjgtHXbezq/3DR0O/
         Ruow==
X-Forwarded-Encrypted: i=1; AJvYcCUegURooF2kmkoaJzYCbDVrSqsZIG2HB2t4SAPr3gaRgI7RNJpJ1lhutg/sv58dNoPpEgJOyXbTtX3BikO8wA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxaz2RPvurZQhsptqvxA2z/D8swKWkc4gM278iEsHDdhinhHZtR
	LGKNF+eb0bfn5e2FWNV5ok/mCtbvf+Ev1/C6UWX1uoT7k9rCtzAcnFo7wu7FbU3b+SgPdckYYoI
	8fwt89psjbWfUeVC3plNufqRXbuCo/w==
X-Gm-Gg: ASbGncvfLH6sUE21gnuo7HK2fQGL5aqS43rXYf7t9cVbsHJEi9mO+DrGRTOlibpiXnx
	D7Ds1uFMKUPqOSUK7xXaPzGMMWjbC8iMlmP49k934piq/iqJm4t0paO6EG4dSRJ+mmRcc40I058
	S737ls0gHCz3uSWWOFAAQY8iRb/oc5fY1CPh1wDHecmCGm2gtNbV0=
X-Google-Smtp-Source: AGHT+IFI8t5oUuYfe512sN4hbdlkBf4YUWLXrADSfeEF5vKKfDDHKRQpVIRW80AfaLm76cL3FeIf/kIdhg0r0WB9ivI=
X-Received: by 2002:a17:90a:c883:b0:305:5f25:fd30 with SMTP id
 98e67ed59e1d1-30e830c515amr9459443a91.4.1747483516125; Sat, 17 May 2025
 05:05:16 -0700 (PDT)
MIME-Version: 1.0
References: <20250517020552.737932-1-jihed.chaibi.dev@gmail.com> <62bd6757-c4d0-42c1-a76d-abea18a8a55e@kernel.org>
In-Reply-To: <62bd6757-c4d0-42c1-a76d-abea18a8a55e@kernel.org>
From: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
Date: Sat, 17 May 2025 14:05:03 +0200
X-Gm-Features: AX0GCFuNFekTg5gca9fpp_VxfmBAQaFo3x-lUPk2J9pqCLWIQ9UGAmDnzGo-2_o
Message-ID: <CANBuOYpRQNx+n6BjpAF0LufpUqRA3wU-GzSNygeWurohXYNF6A@mail.gmail.com>
Subject: Re: [PATCH 1/1] Fixing a minor typo in YAML document
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, briannorris@chromium.org, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel-mentees@lists.linux.dev, 
	skhan@linuxfoundation.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250517_050519_680075_B65AC08F 
X-CRM114-Status: GOOD (  19.74  )
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

VGhhbmtzIGZvciB0aGUgZmVlZGJhY2ssIHRoaXMgZml4IGJlaW5nIGtpbmQgb2YgInRyaXZpYWwi
IEkgZGlkbid0CmluaXRpYWxseSB3YW50IHRvIGluY2x1ZGUgZXZlcnlvbmUgYW5kIHRob3VnaHQg
aXQgd291bGQgZW5kIHVwIHRvIHRoZQptYWluIG1haW50YWluZXIgYWZ0ZXIgYmVpbmcgcmV2aWV3
ZWQgYnkgdGhlIHJldmlld2Vycy9hdXRob3JzIG9mIHRoZQpmaWxlLCBzb3JyeSBmb3IgdGhhdCwg
SSB3aWxsIG1ha2Ugc3VyZSBldmVyeSBtYWludGFpbmVyIGlzIGluY2x1ZGVkIGluCmZ1dHVyZSBw
YXRjaGVzLgoKT24gdGhlIG90aGVyIGhhbmQsIEkgY2FuIGNvbmZpcm0gdGhhdCBJJ20gdXNpbmcg
dGhlIGxhc3Qga2VybmVsIHZlcnNpb24uCgpCZXN0IHJlZ2FyZHMsCgoKT24gU2F0LCBNYXkgMTcs
IDIwMjUgYXQgMToyMeKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4g
d3JvdGU6Cj4KPiBPbiAxNy8wNS8yMDI1IDA0OjA1LCBKaWhlZCBDaGFpYmkgd3JvdGU6Cj4gPiBB
IHNtYWxsIHR5cG8gaW4gdGhlIHJvY2tjaGlwLHJrMzM5OSBZQU1MIGRvY3VtZW50IDsKPiA+ICJs
ZXNzIHRoZW4iIHNob3VsZCBiZWNvbWU6ICJsZXNzIHRoYW4iCj4gPgo+ID4gU2lnbmVkLW9mZi1i
eTogSmloZWQgQ2hhaWJpIDxqaWhlZC5jaGFpYmkuZGV2QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4g
IC4uLi9iaW5kaW5ncy9tZW1vcnktY29udHJvbGxlcnMvcm9ja2NoaXAscmszMzk5LWRtYy55YW1s
ICAgIHwgNiArKystLS0KPgo+IFlvdSBub3Qgb25seSBza2lwcGVkIG1lIGFzIERUIG1haW50YWlu
ZXIgZm9yIHRoaXMgZmlsZSBidXQgYWxzbyBza2lwcGVkCj4gbWUgYXMgdGhlIGFjdHVhbCBzdWJz
eXN0ZW0gbWFpbnRhaW5lci4KPgo+IDxmb3JtIGxldHRlcj4KPiBQbGVhc2UgdXNlIHNjcmlwdHMv
Z2V0X21haW50YWluZXJzLnBsIHRvIGdldCBhIGxpc3Qgb2YgbmVjZXNzYXJ5IHBlb3BsZQo+IGFu
ZCBsaXN0cyB0byBDQyAoYW5kIGNvbnNpZGVyIC0tbm8tZ2l0LWZhbGxiYWNrIGFyZ3VtZW50LCBz
byB5b3Ugd2lsbAo+IG5vdCBDQyBwZW9wbGUganVzdCBiZWNhdXNlIHRoZXkgbWFkZSBvbmUgY29t
bWl0IHllYXJzIGFnbykuIEl0IG1pZ2h0Cj4gaGFwcGVuLCB0aGF0IGNvbW1hbmQgd2hlbiBydW4g
b24gYW4gb2xkZXIga2VybmVsLCBnaXZlcyB5b3Ugb3V0ZGF0ZWQKPiBlbnRyaWVzLiBUaGVyZWZv
cmUgcGxlYXNlIGJlIHN1cmUgeW91IGJhc2UgeW91ciBwYXRjaGVzIG9uIHJlY2VudCBMaW51eAo+
IGtlcm5lbC4KPgo+IFRvb2xzIGxpa2UgYjQgb3Igc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCBw
cm92aWRlIHlvdSBwcm9wZXIgbGlzdCBvZgo+IHBlb3BsZSwgc28gZml4IHlvdXIgd29ya2Zsb3cu
IFRvb2xzIG1pZ2h0IGFsc28gZmFpbCBpZiB5b3Ugd29yayBvbiBzb21lCj4gYW5jaWVudCB0cmVl
IChkb24ndCwgaW5zdGVhZCB1c2UgbWFpbmxpbmUpIG9yIHdvcmsgb24gZm9yayBvZiBrZXJuZWwK
PiAoZG9uJ3QsIGluc3RlYWQgdXNlIG1haW5saW5lKS4gSnVzdCB1c2UgYjQgYW5kIGV2ZXJ5dGhp
bmcgc2hvdWxkIGJlCj4gZmluZSwgYWx0aG91Z2ggcmVtZW1iZXIgYWJvdXQgYGI0IHByZXAgLS1h
dXRvLXRvLWNjYCBpZiB5b3UgYWRkZWQgbmV3Cj4gcGF0Y2hlcyB0byB0aGUgcGF0Y2hzZXQuCj4g
PC9mb3JtIGxldHRlcj4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
