Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AF7EC3DA49
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jul 2024 18:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmlMSsc1uvX1ZJPweEdvEJJrEFsKFtiejK5sBcYZ7x0=; b=N2lOwBwehnW2XA
	sQf6dnHvXuvgCQnB1DxcXLU8YttafzAxmyFzuywx4XavufJUo1QleM3kTzCA33OPUFvkuRX2Bk+qI
	Axzg+2+Yl6gPH9+3UM5cY1HIAK61nBxYBkgkeiX01qhgpsgi0gI+y8sbYbRt1Jfq94dYmUH3dcdzz
	WoKvUlvTi5FOtgXdzXkgBtjp2rZXc56+JQmesvyylzaZ5jpCBZxV8mRVD6YYM1ghtAHsubeXWMKDR
	qL93esv213RL1x7VLE8H9nK7PxSva+v6m7cQwi/aAeFd+n+t2FjzDNh1WCnI2S83bJeq7RD6gkSnr
	BdKOtNfpGFZdBIDIBmOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sT3fr-00000004tl3-33Fp;
	Sun, 14 Jul 2024 18:10:15 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sT3fW-00000004tgU-1XXH;
	Sun, 14 Jul 2024 18:09:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E6D7FCE0B24;
	Sun, 14 Jul 2024 18:09:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2270C4AF13;
	Sun, 14 Jul 2024 18:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720980590;
	bh=NG+9SLQB5CUb0d3jWCkQYWSiXW+fCSYfcN1EMvWBUrs=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=TWR3dPH6oS3VKac35oI/mmSrQusTrgNuyW6cEQIDwl7AEqt4zW0IlfViT8keRsMgl
	 FOooC1R8aZ2B0iS0/nJyBPGVxmGuIvs4BF7uxmgcNHzguGQGy3cKEg8/3mrujc8jW6
	 g7Jg68PAA25/GUj09NortgahSMdfxQSIT7sQ2SFPXv5YObRNtsidgkoKRrTJDV7mkR
	 V9VoiTAKHzA0l7Ozaqhkryn8QrDld9l8Np7s9BlVlTYOP6qDnAJgfCym6slhQ10Bm5
	 Rnn9i9iARH4ZvKDITGIDmp2QgsuoylpjpPW56qEtRyHioylzHWGE5rgDGE+i0xQHnC
	 pfAXPU4wla6rg==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ee9b098bd5so50313321fa.0;
        Sun, 14 Jul 2024 11:09:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXK/v9X8ZtExQ3NS+v3tb7Ks5wKtHH33KCU8uB/OeczEz3pGmoux2LMe5uqgkS33z6MsvOpW5PKPxOT2BK6PvuCJ4Fc62v5ADIvm5c0E82Geh+3oN395ASDEhKbhkvq4X0eSoaxhvWb7JI/9ti40BSAvZJHj8JocWw=
X-Gm-Message-State: AOJu0YzWJWbw0nkxlBHNSZjzTxkx7smuo3XQueA3WcKFkit3wVS/Q3iL
	U/7vyqTYE2we1JAu9CSo0vNl2wUxShg1xZFxn4i4zDVduZ1Mff4FvDBf2A8lUQ6cCiT2GJVnI0t
	gypE+HHJVCCi3Qp0Gne+7YX0a1bQ=
X-Google-Smtp-Source: AGHT+IFFXDuC1PwJBXmFQH3s6fgDJs2b42yBRYfHa3/YS6nIv2xJQGOJLd7uR/2otp56ybbamkaqxaVyWlGuM+dGn3o=
X-Received: by 2002:a2e:b178:0:b0:2ec:5255:b4d9 with SMTP id
 38308e7fff4ca-2eeb30b88acmr130110861fa.7.1720980588944; Sun, 14 Jul 2024
 11:09:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1720969799.git.daniel@makrotopia.org>
In-Reply-To: <cover.1720969799.git.daniel@makrotopia.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 15 Jul 2024 02:09:34 +0800
X-Gmail-Original-Message-ID: <CAGb2v66YespcUHnC3hdhogdutVo_wAX32+cqT3sw3UzkwKBxxQ@mail.gmail.com>
Message-ID: <CAGb2v66YespcUHnC3hdhogdutVo_wAX32+cqT3sw3UzkwKBxxQ@mail.gmail.com>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240714_110954_794722_B0A4C299 
X-CRM114-Status: GOOD (  27.09  )
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
Reply-To: wens@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>, devicetree@vger.kernel.org, Martin Kaiser <martin@kaiser.cx>, Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>, linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBKdWwgMTQsIDIwMjQgYXQgMTE6MTbigK9QTSBEYW5pZWwgR29sbGUgPGRhbmllbEBt
YWtyb3RvcGlhLm9yZz4gd3JvdGU6Cj4KPiBSb2NrY2hpcCBTb0NzIHVzZWQgdG8gaGF2ZSBhIHJh
bmRvbSBudW1iZXIgZ2VuZXJhdG9yIGFzIHBhcnQgb2YgdGhlaXIKPiBjcnlwdG8gZGV2aWNlLgo+
Cj4gSG93ZXZlciBuZXdlciBSb2NrY2hpcCBTb0NzIGxpa2UgdGhlIFJLMzU2OCBoYXZlIGFuIGlu
ZGVwZW5kZW50IFRydWUKPiBSYW5kb20gTnVtYmVyIEdlbmVyYXRvciBkZXZpY2UuIFRoaXMgcGF0
Y2hzZXQgYWRkcyBhIGRyaXZlciBmb3IgaXQgYW5kCj4gZW5hYmxlcyBpdCBpbiB0aGUgZGV2aWNl
IHRyZWUuCj4KPiBUZXN0ZWQgb24gRnJpZW5kbHlBUk0gTmFub1BpIFI1Qy4KPgo+IHY2IC0+IHY3
Ogo+ICAqIFBhdGNoIDE6IHVuY2hhbmdlZAo+Cj4gICogUGF0Y2ggMjogYnJpbmcgYmFjayBya19y
bmdfd3JpdGVfY3RsKCkKPiAgICAtIGJyaW5nIGJhY2sgcmtfcm5nX3dyaXRlX2N0bCgpIHdpdGgg
aW1wcm92ZWQgY29tbWVudCB0byBkZXNjcmliZQo+ICAgICAgdGhlIGhhcmR3YXJlLgo+Cj4gICog
UGF0Y2ggMzogdW5jaGFuZWQKPgo+IHY1IC0+IHY2Ogo+ICAqIFBhdGNoIDE6IHVuY2hhbmdlZAo+
Cj4gICogUGF0Y2ggMjogZ2V0IHJpZCBvZiAjaWZkZWYKPiAgICAtIHVzZSBpZiAoSVNfRU5BQkxF
RCguLi4pKSB7IC4uLiB9aW5zdGVhZCBvZiAjaWZkZWYgaW5zaWRlIGZ1bmN0aW9ucwo+ICAgIC0g
dXNlIF9fbWF5YmVfdW51c2VkIGZvciBmdW5jdGlvbnMgcHJldmlvdXNseSBlbmNsb3NlZCBieSAj
aWZkZWYnZXJ5Cj4KPiAgKiBQYXRjaCAzOiB1bmNoYW5nZWQKPgo+IHY0IC0+IHY1Ogo+ICAqIFBh
dGNoIDE6IGFsd2F5cyB1c2UgUkszNTY4IG5hbWUKPiAgICAtIHVzZSBmdWxsIFJLMzU2OCBuYW1l
IGluIHBhdGNoIGRlc2NyaXB0aW9uCj4gICAgLSBhZGQgUkszNTY4IHRvIHRpdGxlIGluIGJpbmRp
bmcKPgo+ICAqIFBhdGNoIDI6IGZ1bGwgbmFtZSBhbmQgY29zbWV0aWNzCj4gICAgLSBhbHNvIGFs
d2F5cyBtZW50aW9uIFJLMzU2OCBhcyB0aGVyZSBtYXkgYmUgb3RoZXIgUk5HIGluIG90aGVyCj4g
ICAgICAoZnV0dXJlKSBSb2NrY2hpcCBTb0NzCj4gICAgLSByZW1vdmUgZGVidWcgb3V0cHV0IG9u
IHN1Y2Nlc3NmdWwgcHJvYmUKPiAgICAtIHVzZSBNT0RVTEVfQVVUSE9SIHNldmVyYWwgdGltZXMg
aW5zdGVhZCBvZiBzaW5nbGUgY29tbWEtc2VwYXJhdGVkCj4KPiAgKiBQYXRjaCAzOiB1bmNoYW5n
ZWQKPgo+IHYzIC0+IHY0Ogo+ICAqIFBhdGNoIDE6IG1pbm9yIGNvcnJlY3Rpb25zCj4gICAgLSBm
aXggUm9rY2hpcCAtPiBSb2NrY2hpcCB0eXBvCj4gICAgLSBjaGFuZ2UgY29tbWl0IHRpdGxlIGFz
IHJlcXVlc3RlZAo+Cj4gICogUGF0Y2ggMjogaW1wcm92ZWQgZXJyb3IgaGFuZGxpbmcgYW5kIHJl
c291cmNlIG1hbmFnZW1lbnQKPiAgICAtIEFsd2F5cyB1c2Ugd3JpdGVsKCkgaW5zdGVhZCBvZiB3
cml0ZWxfcmVsYXhlZCgpCj4gICAgLSBVc2UgcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldAo+ICAg
IC0gQ29ycmVjdGx5IHJldHVybiBlcnJvciBjb2RlIGluIHJrX3JuZ19yZWFkKCkKPiAgICAtIE1h
a2UgdXNlIG9mIGRldm1fcmVzZXRfY29udHJvbF9hcnJheV9nZXRfZXhjbHVzaXZlCj4gICAgLSBV
c2UgZGV2bV9wbV9ydW50aW1lX2VuYWJsZSBhbmQgdGhlcmUgYnkgZ2V0IHJpZCBvZiBya19ybmdf
cmVtb3ZlKCkKPgo+ICAqIFBhdGNoIDM6Cj4gICAgLSBNb3ZlIG5vZGUgdG8gY29uZm9ybSB3aXRo
IG9yZGVyaW5nIGJ5IGFkZHJlc3MKPgo+IHYyIC0+IHYzOiBwYXRjaCBhZG9wdGVkIGJ5IERhbmll
bCBHb2xsZQo+ICAqIFBhdGNoIDE6IGFkZHJlc3MgY29tbWVudHMgb2YgS3J6eXN6dG9mIEtvemxv
d3NraSwgYWRkIE1BSU5UQUlORVJTCj4gICAgLSBpbXByb3ZlZCBkZXNjcmlwdGlvbgo+ICAgIC0g
bWVhbmluZ2Z1bCBjbG9jay1uYW1lcwo+ICAgIC0gYWRkIGVudHJ5IGluIE1BSU5UQUlORVJTIGZp
bGVzCj4KPiAgKiBQYXRjaCAyOiBudW1lcm91cyBjb2RlLXN0eWxlIGltcHJvdmVtZW50cwo+ICAg
IC0gZHJvcCBtaXNsZWFkaW5nIHJrX3JuZ193cml0ZV9jdGwoKSwgc2ltcGxpZnkgSS9PIHdyaXRl
cwo+ICAgIC0gZHJvcCB1bnVzZWQgVFJOR19STkdfRE9VVF9bMS03XSBtYWNyb3MKPiAgICAtIGhh
bmRsZSBlcnJvciBoYW5kbGluZyBmb3IgcG1fcnVudGltZV9nZXRfc3luYygpCj4gICAgLSB1c2Ug
bWVtY3B5X2Zyb21pbygpIGluc3RlYWQgb2Ygb3BlbiBjb2RpbmcgZm9yLWxvb3AKPiAgICAtIHNv
bWUgbWlub3Igd2hpdGUtc3BhY2VzIGZpeGVzCj4KPiAgKiBQYXRjaCAzOgo+ICAgIC0gdXNlIGNs
b2NrLW5hbWVzIGFzIGRlZmluZWQgaW4gZHQtYmluZGluZ3MKPgo+IHYxIC0+IHYyOgo+ICAqIFBh
dGNoIDE6IGZpeCBpc3N1ZXMgcmVwb3J0ZWQgYnkgUm9iIEhlcnJpbmcgYW5kIEtyenlzenRvZiBL
b3psb3dza2k6Cj4gICAgLSBSZW5hbWUgcm9ja2NoaXAtcm5nLnlhbWwgaW50byByb2NrY2hpcCxy
azM1Njgtcm5nLnlhbWwKPiAgICAtIEZpeCBiaW5kaW5nIHRpdGxlIGFuZCBkZXNjcmlwdGlvbgo+
ICAgIC0gRml4IGNvbXBhdGlibGUgcHJvcGVydHkKPiAgICAtIFJlbmFtZSBjbG9ja3MgYW5kIGFk
ZCB0aGUgY29ycmVzcG9uZGluZyBkZXNjcmlwdGlvbnMKPiAgICAtIERyb3AgcmVzZXQtbmFtZXMK
PiAgICAtIEFkZCBhIGJ1cyBkZWZpbml0aW9uIHdpdGggI2FkZHJlc3MtY2VsbHMgYW5kICNzaXpl
LWNlbGxzIHRvIHRoZQo+ICAgICAgZXhhbXBsZS4KPgo+ICAqIFBhdGNoIDI6IGZpeCBpc3N1ZSBy
ZXBvcnRlZCBieSBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiAgICAtIERvIG5v
dCByZWFkIHRoZSByYW5kb20gcmVnaXN0ZXJzIGFzIGJpZyBlbmRpYW4sIGxvb2tpbmcgYXQgdGhl
Cj4gICAgICBSSzM1NjggVFJNIHRoaXMgaXMgYWN0dWFsbHkgbm90IG5lZWRlZC4gVGhpcyBmaXhl
cyBhIHNwYXJzZQo+ICAgICAgd2FybmluZy4KPgo+ICAqIFBhdGNoIDM6IHVuY2hhbmdlZAo+Cj4K
PiBBdXJlbGllbiBKYXJubyAoMyk6Cj4gICBkdC1iaW5kaW5nczogcm5nOiBBZGQgUm9ja2NoaXAg
UkszNTY4IFRSTkcKPiAgIGh3cm5nOiBhZGQgaHdybmcgZHJpdmVyIGZvciBSb2NrY2hpcCBSSzM1
NjggU29DCj4gICBhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIERUIGVudHJ5IGZvciBSTkcgdG8g
UkszNTZ4CgpUZXN0ZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4KCj4gIC4uLi9i
aW5kaW5ncy9ybmcvcm9ja2NoaXAscmszNTY4LXJuZy55YW1sICAgICB8ICA2MSArKysrKwo+ICBN
QUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDcgKwo+ICBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpICAgICAgfCAgIDkgKwo+ICBk
cml2ZXJzL2NoYXIvaHdfcmFuZG9tL0tjb25maWcgICAgICAgICAgICAgICAgfCAgMTQgKysKPiAg
ZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9NYWtlZmlsZSAgICAgICAgICAgICAgIHwgICAxICsKPiAg
ZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9yb2NrY2hpcC1ybmcuYyAgICAgICAgIHwgMjI3ICsrKysr
KysrKysrKysrKysrKwo+ICA2IGZpbGVzIGNoYW5nZWQsIDMxOSBpbnNlcnRpb25zKCspCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3Jv
Y2tjaGlwLHJrMzU2OC1ybmcueWFtbAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9jaGFy
L2h3X3JhbmRvbS9yb2NrY2hpcC1ybmcuYwo+Cj4gLS0KPiAyLjQ1LjIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
