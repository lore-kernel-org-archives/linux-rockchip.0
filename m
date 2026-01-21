Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AF5DD262B2
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 07:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ER5CPD/ZIRYJgw32IGP8AdzTAr/x7Gsw4QnoVe+UHws=; b=15XgMvviG25A6f
	BBGhy7N87slT6027CPmCfo/Ej/Hv7vwvJL0FD5wpzy7q/KJRZuErKNUp1C1A5Edq2OiAqBxsFOE89
	/hqBfvIHh4WsYmtEmde56/D5UBDo1wQAJhG9z39QmWNerZuYrtwlLT5ILeKbMeA/DKrjtqdzl7Ne5
	OEPOEg9dUXqaOyUFsiJJhkVTxLpHx5++gdpnI8nOwjUnrrPDC0KTHY70HKksBBSgMuIIhF8lO3u/4
	l474ycCydQ5JPo+Cl6vGpZdJHZLJkQZKefKkJhjR0MU35Dp4Ec4IPuZhiyqrWgTyQ2sz2mYBqQuDE
	cA7phv/9rFcXv0SHZKyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viSkT-000000051ZC-2qdp;
	Wed, 21 Jan 2026 07:35:29 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viSkP-000000051YQ-3hP3
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jan 2026 07:35:27 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-8c5265d06c3so67216185a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Jan 2026 23:35:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768980924; cv=none;
        d=google.com; s=arc-20240605;
        b=GDNTwACqdBz8+iC2JRvw6DeF3kvaBK6T7bBRzD6Zo3VyCH/JdAh6Qy4FugjC7EdMZd
         U+YsruXjxOsrzDgEvd7smNJf9vvoFcAnkW7uf741ar7/x5M22pTzi6dGM9VTZsAEwp8a
         p5gNT7YRzzB/5Q1gc2XEkaWRvHJyaFLU0wHeiza8B+igC/JqhOtwTRa50mFlzoVWYe+c
         ImggkPKK0VroaooizSsEI+lT5gmuEzBOSq2pRN7SIyg+oapqPzH/Fq75/I8txYykNIne
         MKHN+y+zt2OgOurlAv5k75AGzy3IFIelHXwCt9FjqOdTzqiu8JKmV9WCL0PZe0W666AE
         XDPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GlwN8j82SgoVOz7HHzh2bhzIqCg28sVCaQneoE9LKSM=;
        fh=Scc/FBWJHVGC8+/Q8oSybBZXbXXITE3Gd4B12BmAJEo=;
        b=ikY0IY99C56adCKaZ51jztfACpK+8rpxQUPfZvt3KVSvm+iTx3hXYiPCKVYUYw7/16
         iHpEqZMQYg9UokuTyIc0FHIui6fDvdEAWjNfWLCLmd1X+xjOi6BhkQH8G3rAaldCkHWX
         Lo0Ylz0LVQxuoGu8J92zB90iPPrLd4xHI3fpFXvoDW3dPRAnzAvCB0TtAGsJ4fLqQH1U
         9ltrT4FhBTjJ92dVErp/fVXzPLsb+JUEYbIehHcaAoiO3P1wuo6dFw3IKZ9r/pe2UXt1
         yoHu/WGhhGJjMek24wOr9Z9F6pMzsmnc7D83EH7K/bO4I5fJRKqKmjolY8gU0CzeXkxh
         KQqw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768980924; x=1769585724; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GlwN8j82SgoVOz7HHzh2bhzIqCg28sVCaQneoE9LKSM=;
        b=mYZASeUJOl1DJSpDQKVYZjNLqFXB6SIDvUOz4+9wMECwcvtIpT7SRYXwz4FUzhCZIh
         mMPAnGx3dvC9nXYprTCPLmxuJpD6eVg42Dufpw4x/uEzyg1qU9MKNJkdzHaMLk6hcPjG
         GEJorhJWFURSnVrk+una1evocuGKRTjiR+luW+BUrINC0ZAamztqwJ3HrH2M5de0EUjv
         Gp8ncxldKTnIY0VaflbZaQPQWtuFOl5pwIXz8VMMvIZZPppgH0sFKueDtqdsOPyfSUvI
         WTNfgWSYAPxfoGfItWbMxO18msfHqOx0edHA4FKFTYbLE0iwwoyRIhuY6+d/Q65Jfg7F
         ncUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768980924; x=1769585724;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GlwN8j82SgoVOz7HHzh2bhzIqCg28sVCaQneoE9LKSM=;
        b=D5TWNSThLwDYe5gy/ORzikzUG8lSdzMwRZy0PF4eiHeGHCI82BE+Za11LZyJDbMs8h
         4l5rlPqZPwPjt0If7eez29IPqfjHuQGrG2wViuPpM9h04ti4zUlxnA25BSX3E9UOleLY
         daCx8ok4nrotoaXA0jjXrFbZfNrU8IFbW7/LZqYRnY9D07piNV1u1vj41Mi5yPkRJLMe
         +IqwyBPybFi5M29Wi47WhRw5QLrdC8P4oV9j+BTrW6tysOxfdapuaVV6IIDCkzAynZOF
         NGHwizG1hQTGcrsdXxzRO0C9k1cHexkf4BcwNPPwQ5RE/jpVdB5w2mJ/Ofy7hWhySiNq
         j7Vw==
X-Forwarded-Encrypted: i=1; AJvYcCUusHyR+BqWpCeJrhmTost5l73Ps4TymmmVUoiHQnW7qNwscrn2uBHo65T5mxGkX9fsJZq7d7eWzgG9vwqkVg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1JCubyk7U1I8tNxMkGh1GqE5iFcIowxtVrRopQJcsm/cV1OOb
	+VmXomZUcsn/Lfpveb3b85OutxDX0qoFl/Aj4nClMAk+ccBK8GiwWaeUukJnJc4+4EGsVDDRG9G
	teqHpHg5aINrylnwsumB/9yK7TFRt7hU=
X-Gm-Gg: AZuq6aKnjp96oqzdPN0p7TzygXCIY9dGm/oFLP7+nFDJuCc8OemDQ/OzOXLFNn3stFa
	PwhZRyneSsNEoccJDf0cZf9FAWgWqUDBFCQoWgEc1inXAkVpv034EOAOokPf/0eZG5y/+TUtcaj
	/xUz1mEkzaG8KdKjFS6jctSmFrYl8GO/R4pHiKQDDnUSicleO/AnvbejFqZ/TTRlPfmHIIphoog
	RjjSfwkupmtbeQsb/hSD6n39rrK1QcgAh/VY0eX5jyGKdpaFt7DxL3jDEZzEgSYaTS7wqncTASF
	uaGpsMghfAkzDPZiBB9swrKo0TY=
X-Received: by 2002:a05:620a:199e:b0:8c6:a5ae:e9cc with SMTP id
 af79cd13be357-8c6a5aeeb3dmr2503090885a.14.1768980924177; Tue, 20 Jan 2026
 23:35:24 -0800 (PST)
MIME-Version: 1.0
References: <20260120-ufs-rst-v2-1-b5735f1996f6@gmail.com> <176894531223.1201556.243460289333921566.robh@kernel.org>
In-Reply-To: <176894531223.1201556.243460289333921566.robh@kernel.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 21 Jan 2026 11:35:15 +0400
X-Gm-Features: AZwV_Qj7xD-HFnkapRoKPYsoUpofy6BjoS4guSoqEyGq3j-AZNfOskowc3KWMuM
Message-ID: <CABjd4YyPhHCL0TNzKG1_t4bTspfcC0bx41a8t=u+CJo6JvMC0g@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Explicitly request UFS reset pin
 on RK3576
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Heiko Stuebner <heiko@sntech.de>, stable@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_233525_947172_15F2C0C5 
X-CRM114-Status: GOOD (  32.15  )
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

T24gV2VkLCBKYW4gMjEsIDIwMjYgYXQgMTo0NeKAr0FNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4KPiBPbiBUdWUsIDIwIEphbiAyMDI2IDE2OjUzOjU0ICswNDAwLCBB
bGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IFJvY2tjaGlwIFJLMzU3NiBVRlMgY29udHJvbGxlciB1
c2VzIGEgZGVkaWNhdGVkIHBpbiB0byByZXNldCB0aGUgY29ubmVjdGVkCj4gPiBVRlMgZGV2aWNl
LCB3aGljaCBjYW4gb3BlcmF0ZSBlaXRoZXIgaW4gYSBoYXJkd2FyZSBjb250cm9sbGVkIG1vZGUg
b3IgYXMgYQo+ID4gR1BJTyBwaW4uCj4gPgo+ID4gUG93ZXItb24gZGVmYXVsdCBpcyBHUElPIG1v
ZGUsIGJ1dCB0aGUgYm9vdCBST00gcmVjb25maWd1cmVzIGl0IHRvIGEKPiA+IGhhcmR3YXJlIGNv
bnRyb2xsZWQgbW9kZSBpZiBpdCB1c2VzIFVGUyB0byBsb2FkIHRoZSBuZXh0IGJvb3Qgc3RhZ2Uu
Cj4gPgo+ID4gR2l2ZW4gdGhhdCBleGlzdGluZyBiaW5kaW5ncyAoYW5kIHJrMzU3Ni5kdHNpKSBl
eHBlY3QgYSBHUElPLWNvbnRyb2xsZWQKPiA+IGRldmljZSByZXNldCwgcmVxdWVzdCB0aGUgcmVx
dWlyZWQgcGluIGNvbmZpZyBleHBsaWNpdGx5Lgo+ID4KPiA+IFRoaXMgZG9lc24ndCBhcHBlYXIg
dG8gYWZmZWN0IExpbnV4LCBidXQgaXQgZG9lcyBhZmZlY3QgVS1ib290Ogo+ID4KPiA+IEJlZm9y
ZToKPiA+ID0+IG1kLmwgMHgyNjA0YjM5OAo+ID4gMjYwNGIzOTg6IDAwMDAwMDExIDAwMDAwMDAw
IDAwMDAwMDAwIDAwMDAwMDAwICAuLi4uLi4uLi4uLi4uLi4uCj4gPiA8IC4uLiBzbmlwIC4uLiA+
Cj4gPiA9PiB1ZnMgaW5pdAo+ID4gdWZzaGNkLXJvY2tjaGlwIHVmc2hjQDJhMmQwMDAwOiBbUlgs
IFRYXTogZ2Vhcj1bMywgM10sIGxhbmVbMiwgMl0sIHB3cltGQVNUQVVUT19NT0RFLCBGQVNUQVVU
T19NT0RFXSwgcmF0ZSA9IDIKPiA+ID0+IG1kLmwgMHgyNjA0YjM5OAo+ID4gMjYwNGIzOTg6IDAw
MDAwMDExIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwICAuLi4uLi4uLi4uLi4uLi4uCj4gPgo+
ID4gQWZ0ZXI6Cj4gPiA9PiBtZC5sIDB4MjYwNGIzOTgKPiA+IDI2MDRiMzk4OiAwMDAwMDAxMSAw
MDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAgLi4uLi4uLi4uLi4uLi4uLgo+ID4gPCAuLi4gc25p
cCAuLi4+Cj4gPiA9PiB1ZnMgaW5pdAo+ID4gdWZzaGNkLXJvY2tjaGlwIHVmc2hjQDJhMmQwMDAw
OiBbUlgsIFRYXTogZ2Vhcj1bMywgM10sIGxhbmVbMiwgMl0sIHB3cltGQVNUQVVUT19NT0RFLCBG
QVNUQVVUT19NT0RFXSwgcmF0ZSA9IDIKPiA+ID0+IG1kLmwgMHgyNjA0YjM5OAo+ID4gMjYwNGIz
OTg6IDAwMDAwMDEwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwICAuLi4uLi4uLi4uLi4uLi4u
Cj4gPgo+ID4gKDB4MjYwNGIzOTggaXMgdGhlIHJlc3BlY3RpdmUgcGluIG11eCByZWdpc3Rlciwg
d2l0aCBpdHMgQklUMCBkcml2aW5nIHRoZQo+ID4gbW9kZSBvZiBVRlNfUlNUOiB1bnNldCA9IEdQ
SU8sIHNldCA9IGhhcmR3YXJlIGNvbnRyb2xsZWQgVUZTX1JTVCkKPiA+Cj4gPiBUaGlzIGhlbHBz
IGVuc3VyZSB0aGF0IEdQSU8tZHJpdmVuIGRldmljZSByZXNldCBhY3R1YWxseSBmaXJlcyB3aGVu
IHRoZQo+ID4gc3lzdGVtIHJlcXVlc3RzIGl0LCBub3Qgd2hlbiB3aGF0ZXZlciBibGFjayBib3gg
bWFnaWMgaW5zaWRlIHRoZSBVRlNIQwo+ID4gZGVjaWRlcyB0byByZXNldCB0aGUgZmxhc2ggY2hp
cC4KPiA+Cj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+ID4gRml4ZXM6IGM3NWU1ZTAx
MGZlZiAoInNjc2k6IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgVUZTIHN1cHBvcnQgZm9yIFJL
MzU3NiBTb0MiKQo+ID4gUmVwb3J0ZWQtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVs
ekBjaGVycnkuZGU+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0Bn
bWFpbC5jb20+Cj4gPiAtLS0KPiA+IFRoaXMgaGFzIG9yaWdpbmFsbHkgc3VyZmFjZWQgZHVyaW5n
IHRoZSByZXZpZXcgb2YgVUZTIHBhdGNoZXMgZm9yIFUtYm9vdAo+ID4gYXQgWzFdLCB3aGVyZSBp
dCB3YXMgZm91bmQgdGhhdCB0aGUgVUZTIHJlc2V0IGxpbmUgaXMgbm90IHJlcXVlc3RlZCB0byBi
ZQo+ID4gY29uZmlndXJlZCBhcyBHUElPIGJ1dCB1c2VkIGFzIHN1Y2guIFRoaXMgbGVhZHMgaW4g
c29tZSBjYXNlcyB0byB0aGUgVUZTCj4gPiBkcml2ZXIgYXBwZWFyaW5nIHRvIGNvbnRyb2wgZGV2
aWNlIHJlc2V0cywgd2hpbGUgaW4gZmFjdCBpdCBpcyB0aGUKPiA+IGludGVybmFsIGNvbnRyb2xs
ZXIgbG9naWMgdGhhdCBkcml2ZXMgdGhlIHJlc2V0IGxpbmUgKHBlcmhhcHMgaW4KPiA+IHVuZXhw
ZWN0ZWQgd2F5cykuCj4gPgo+ID4gVGhhbmtzIFF1ZW50aW4gU2NodWx6IGZvciBzcG90dGluZyB0
aGlzIGlzc3VlLgo+ID4KPiA+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy91LWJvb3QvMjU5
ZmMzNTgtZjcyYi00YTI0LTlhNzEtYWQ5MGYyMDgxMzM1QGNoZXJyeS5kZS8KPiA+IC0tLQo+ID4g
Q2hhbmdlcyBpbiB2MjoKPiA+IC0gQ2hhbmdlIGRlZmF1bHQgcGluIHB1bGwgdG8gcHVsbC1kb3du
IGluIGxpbmUgd2l0aCB0aGUgU29DIHBvd2VyLW9uIGRlZmF1bHQKPiA+IC0gTGluayB0byB2MTog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI2MDExOS11ZnMtcnN0LXYxLTEtYzhlOTY0OTM5
NDhjQGdtYWlsLmNvbQo+ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NzYtcGluY3RybC5kdHNpIHwgNyArKysrKysrCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NzYuZHRzaSAgICAgICAgIHwgMiArLQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+Cj4KPiBNeSBib3QgZm91bmQgbmV3
IERUQiB3YXJuaW5ncyBvbiB0aGUgLmR0cyBmaWxlcyBhZGRlZCBvciBjaGFuZ2VkIGluIHRoaXMK
PiBzZXJpZXMuCj4KPiBTb21lIHdhcm5pbmdzIG1heSBiZSBmcm9tIGFuIGV4aXN0aW5nIFNvQyAu
ZHRzaS4gT3IgcGVyaGFwcyB0aGUgd2FybmluZ3MKPiBhcmUgZml4ZWQgYnkgYW5vdGhlciBzZXJp
ZXMuIFVsdGltYXRlbHksIGl0IGlzIHVwIHRvIHRoZSBwbGF0Zm9ybQo+IG1haW50YWluZXIgd2hl
dGhlciB0aGVzZSB3YXJuaW5ncyBhcmUgYWNjZXB0YWJsZSBvciBub3QuIE5vIG5lZWQgdG8gcmVw
bHkKPiB1bmxlc3MgdGhlIHBsYXRmb3JtIG1haW50YWluZXIgaGFzIGNvbW1lbnRzLgo+Cj4gSWYg
eW91IGFscmVhZHkgcmFuIERUIGNoZWNrcyBhbmQgZGlkbid0IHNlZSB0aGVzZSBlcnJvcihzKSwg
dGhlbgo+IG1ha2Ugc3VyZSBkdC1zY2hlbWEgaXMgdXAgdG8gZGF0ZToKPgo+ICAgcGlwMyBpbnN0
YWxsIGR0c2NoZW1hIC0tdXBncmFkZQo+Cj4KPiBUaGlzIHBhdGNoIHNlcmllcyB3YXMgYXBwbGll
ZCAodXNpbmcgYjQpIHRvIGJhc2U6Cj4gIEJhc2U6IDQ2ZmU2NWEyYzI4ZWNmNWRmMWE3NDc1YWJh
MWYwOGNjZjRjMGFjMWIgKHVzZSAtLW1lcmdlLWJhc2UgdG8gb3ZlcnJpZGUpCj4KPiBJZiB0aGlz
IGlzIG5vdCB0aGUgY29ycmVjdCBiYXNlLCBwbGVhc2UgYWRkICdiYXNlLWNvbW1pdCcgdGFnCj4g
KG9yIHVzZSBiNCB3aGljaCBkb2VzIHRoaXMgYXV0b21hdGljYWxseSkKPgo+Cj4gTmV3IHdhcm5p
bmdzIHJ1bm5pbmcgJ21ha2UgQ0hFQ0tfRFRCUz15IGZvciBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwLycgZm9yIDIwMjYwMTIwLXVmcy1yc3QtdjItMS1iNTczNWYxOTk2ZjZAZ21haWwuY29t
Ogo+Cj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtbHVja2ZveC1vbW5pMzU3
Ni5kdGI6IHVmczogdWZzLXJzdC1ncGlvOiB7J3JvY2tjaGlwLHBpbnMnOiBbWzQsIDI0LCAwLCAy
OV1dLCAncGhhbmRsZSc6IDExM30gaXMgbm90IG9mIHR5cGUgJ2FycmF5Jwo+ICAgICAgICAgZnJv
bSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9ncGlvL2dwaW8tY29u
c3VtZXIueWFtbAo+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LTEwMGFzay1k
c2hhbnBpLWExLmR0YjogdWZzOiB1ZnMtcnN0LWdwaW86IHsncm9ja2NoaXAscGlucyc6IFtbNCwg
MjQsIDAsIDI5XV0sICdwaGFuZGxlJzogMTMwfSBpcyBub3Qgb2YgdHlwZSAnYXJyYXknCj4gICAg
ICAgICBmcm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2dwaW8v
Z3Bpby1jb25zdW1lci55YW1sCj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYt
bmFub3BpLXI3NnMuZHRiOiB1ZnM6IHVmcy1yc3QtZ3Bpbzogeydyb2NrY2hpcCxwaW5zJzogW1s0
LCAyNCwgMCwgMjldXSwgJ3BoYW5kbGUnOiAxMTZ9IGlzIG5vdCBvZiB0eXBlICdhcnJheScKPiAg
ICAgICAgIGZyb20gc2NoZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bp
by9ncGlvLWNvbnN1bWVyLnlhbWwKPiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3
Ni1yb2MtcGMuZHRiOiB1ZnM6IHVmcy1yc3QtZ3Bpbzogeydyb2NrY2hpcCxwaW5zJzogW1s0LCAy
NCwgMCwgMjldXSwgJ3BoYW5kbGUnOiAxMTd9IGlzIG5vdCBvZiB0eXBlICdhcnJheScKPiAgICAg
ICAgIGZyb20gc2NoZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bpby9n
cGlvLWNvbnN1bWVyLnlhbWwKPiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1u
YW5vcGktbTUuZHRiOiB1ZnM6IHVmcy1yc3QtZ3Bpbzogeydyb2NrY2hpcCxwaW5zJzogW1s0LCAy
NCwgMCwgMjldXSwgJ3BoYW5kbGUnOiAxMzN9IGlzIG5vdCBvZiB0eXBlICdhcnJheScKPiAgICAg
ICAgIGZyb20gc2NoZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bpby9n
cGlvLWNvbnN1bWVyLnlhbWwKPiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1y
b2NrLTRkLmR0YjogdWZzOiB1ZnMtcnN0LWdwaW86IHsncm9ja2NoaXAscGlucyc6IFtbNCwgMjQs
IDAsIDI5XV0sICdwaGFuZGxlJzogMTIyfSBpcyBub3Qgb2YgdHlwZSAnYXJyYXknCj4gICAgICAg
ICBmcm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2dwaW8vZ3Bp
by1jb25zdW1lci55YW1sCj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtZXZi
MS12MTAuZHRiOiB1ZnM6IHVmcy1yc3QtZ3Bpbzogeydyb2NrY2hpcCxwaW5zJzogW1s0LCAyNCwg
MCwgMjldXSwgJ3BoYW5kbGUnOiAxMzR9IGlzIG5vdCBvZiB0eXBlICdhcnJheScKPiAgICAgICAg
IGZyb20gc2NoZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bpby9ncGlv
LWNvbnN1bWVyLnlhbWwKPiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1hcm1z
b20tc2lnZTUuZHRiOiB1ZnM6IHVmcy1yc3QtZ3Bpbzogeydyb2NrY2hpcCxwaW5zJzogW1s0LCAy
NCwgMCwgMjldXSwgJ3BoYW5kbGUnOiAxMzB9IGlzIG5vdCBvZiB0eXBlICdhcnJheScKPiAgICAg
ICAgIGZyb20gc2NoZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bpby9n
cGlvLWNvbnN1bWVyLnlhbWwKPiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1l
dmIxLXYxMC1wY2llMS5kdGI6IHVmczogdWZzLXJzdC1ncGlvOiB7J3JvY2tjaGlwLHBpbnMnOiBb
WzQsIDI0LCAwLCAyOV1dLCAncGhhbmRsZSc6IDEzNH0gaXMgbm90IG9mIHR5cGUgJ2FycmF5Jwo+
ICAgICAgICAgZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9n
cGlvL2dwaW8tY29uc3VtZXIueWFtbAo+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTc2LWFybXNvbS1zaWdlNS12MS4yLXdpZmlidC5kdGI6IHVmczogdWZzLXJzdC1ncGlvOiB7J3Jv
Y2tjaGlwLHBpbnMnOiBbWzQsIDI0LCAwLCAyOV1dLCAncGhhbmRsZSc6IDEzMH0gaXMgbm90IG9m
IHR5cGUgJ2FycmF5Jwo+ICAgICAgICAgZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJl
ZS5vcmcvc2NoZW1hcy9ncGlvL2dwaW8tY29uc3VtZXIueWFtbAoKVGhhbmsgeW91IGJvdC4gVGhp
cyB3aWxkY2FyZCBmb3IgKi1ncGlvIGlzIGRyaXZpbmcgbWUgY3JhenkuIEFuZCB5ZXMsCmxvb2tz
IGxpa2UgSSBmb3Jnb3QgdG8gdGVzdCBhZ2FpbnN0IHRoZSBzY2hlbWEgLSBzb3JyeSBmb3IgdGhh
dC4gV2lsbApyZXNlbmQgYSBzbGlnaHRseSBhZGp1c3RlZCB2ZXJzaW9uIHNob3J0bHkKKHMvdWZz
LXJzdC1ncGlvL3Vmcy1yc3RncGlvLyB0byBhdm9pZCBpbmNvcnJlY3RseSBtYXRjaGluZyBhZ2Fp
bnN0IHRoZQpHUElPIHNjaGVtYSkKCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
