Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D53ACC61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 18:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKsDs2y0OFfMXY4w3lg4zHl96cfRs0jkhjYwJel0X1U=; b=QRXKN+fJmk4Wyy
	CxvnTv+ifkrCrukbUHrzYlZQ7/irlznZZVnz/Zj1HrR2Nd5mkWOj4XCwlLu1hyloWZt5+LCmDJvwo
	bVKPpTzh73cRNrKVx187XkcQIIJp3MVHMJ/MymYqUEPdmR2ZYK/i05Pq1/j3KJ8hkJQL9/Q7v/Vb+
	QHxYaQkoAmBvniqs7mqPsTSnZEFvqdZkmev95O0mvaTPZG/SJMsMqdswx9XZZ90sZSerd91prfxGm
	1A6IW+bISXGWIIo7r2jffuFOz5BdTC2QB0QiGudQ/39zckT8fi3iI1ghmTaLdUKazvMhYOnbljnZl
	bMj9m0bU6h9IyCQ90ktg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbn2U-007KIl-25; Mon, 13 Mar 2023 18:36:54 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbn2R-007KI9-Cd
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 18:36:52 +0000
Received: by mail-wr1-x42a.google.com with SMTP id o7so2854332wrg.5
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Mar 2023 11:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678732609;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0On3lk8dvxcR+1Ki8IT4nZKbfo+xTeDYisoJbo8GSvQ=;
        b=QDGq684iFqzHTyROS4kkduB7wenwlNsZLog+SAWAk45PtfTGajIhTWbpg0bpjYsFmO
         QB22KQfD8+JkZKa9p3z/JH/GpcUUVIp7loT/vGy97FiinJZgkWd7IGe/WEu29xB2wBxi
         sGvTH6WjcyPoZysIRsV03sEyRF/TeRAYfLC3AK0hzVzIZk5i1frEkgtXrkXKU/9f9kES
         Z2m9ERBf4f9ntoX061l9HuB8BeVC6M0ip8+LopVFBlvL/5946I5ayzdlHJK+ZIwOwflR
         gtFxARx99WaiBNyhxk2wzw2lBEE8LapSOxDN2XCh9VT6fse/dgM5iVsst+DfzzTCXL4W
         VJZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678732609;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0On3lk8dvxcR+1Ki8IT4nZKbfo+xTeDYisoJbo8GSvQ=;
        b=Vm/ryZ2MwvlDHGu/0huhGbV1lEuAsJ3/XjasTnlvhTyJwJt/O7LBKSez4QgpBQE6Q4
         nCEYwhxWpnwTntKBK3qY9RCP4feeVrlozea+M9Sl8NkSUmsanRB0zNB2VGnavg5KeIZH
         GPtGLS02e0+I3G+1WTVxsaZ2HpcMAY0HMPo0Exu+K1qSAApgiHORwBQ1mnYcXw8ljeuB
         RKS0fXrpQBxo/s/wculTyxnzXPDpDUqeV8y2isFaLt/YlLnWzvKssnwEOhdloW72Oz0M
         yqDOhji/HQ2FC6w5GdCW5GqBqJ0BAOk1OyAK3+Umcsde+jZrBtiU8mv1bLl1YabRYuao
         kiIA==
X-Gm-Message-State: AO0yUKUZB21loTmCvhScdBYl+Z2szvPivh5XUuY1oKcR/G5X4ehJG3s3
	4aiuV5fMQU16UOPoIEsqnFb6enAMFy+X28kL90Oi5NIQkI0=
X-Google-Smtp-Source: AK7set8B0dNsqRcONkpmAQzYZpFmKmuWzseRMwzUiu+G+KUHnd9RjQ6h37IsNYiDXaiabSg/eqoZDg7ImeZQGTYO1BM=
X-Received: by 2002:a5d:4347:0:b0:2c7:1320:7781 with SMTP id
 u7-20020a5d4347000000b002c713207781mr7187605wrr.13.1678732608854; Mon, 13 Mar
 2023 11:36:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230228152205.133582-1-macroalpha82@gmail.com>
 <20230228152205.133582-3-macroalpha82@gmail.com> <CADcbR4+Onb6RM7grPrqRL8Rth0mbFXykRmPq8R1QxYRGaHQHtA@mail.gmail.com>
 <CADcbR4L6b9D1FJx9u1jFvZ6jhixNs3_Ky+Mu0rHwtXZ6ATO-Eg@mail.gmail.com>
In-Reply-To: <CADcbR4L6b9D1FJx9u1jFvZ6jhixNs3_Ky+Mu0rHwtXZ6ATO-Eg@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 13 Mar 2023 11:36:21 -0700
Message-ID: <CA+E=qVdjvYn2qPCP+9EaS=90DT_uEVSk0z04tU3DL0X8NumUAQ@mail.gmail.com>
Subject: Re: [PATCH 2/3 V4] Bluetooth: hci_h5: btrtl: Add support for RTL8821CS
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-bluetooth@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, alistair@alistair23.me, luiz.dentz@gmail.com, 
	johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_113651_447431_11669AED 
X-CRM114-Status: GOOD (  27.41  )
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

T24gTW9uLCBNYXIgMTMsIDIwMjMgYXQgMTE6MTLigK9BTSBDaHJpcyBNb3JnYW4gPG1hY3JvYWxw
aGE4MkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSSBmb3VuZCB0aGUgZml4LCBzaW1wbHkgcHV0IGNo
YW5naW5nIHRoZSBjb21wYXRpYmxlIGZyb20KPiByZWFsdGVrLHJ0bDg4MjJjcy1idCB0byByZWFs
dGVrLHJ0bDg3MzJicy1idCBmaXhlcyBpdCAoYmVjYXVzZSBpdCBzZXRzCj4gdGhlICJINV9JTkZP
X1dBS0VVUF9ESVNBQkxFIiBmbGFnKS4gSXMgaXQgdG9vIGxhdGUgZm9yIGEgVjUsIG9yIHNob3Vs
ZAo+IEkgc3VibWl0IHRoaXMgYXMgYSBmaXggdG8gdGhlIGRldmljZXRyZWUgYW5kIGRldmljZXRy
ZWUgZG9jdW1lbnRhdGlvbj8KCkJ1dCBpcyBpdCBhY3R1YWxseSBjb21wYXRpYmxlIHdpdGggcnRs
ODcyM2JzLWJ0IHRob3VnaD8gSSB0aGluayB5b3UKbWF5IG5lZWQgdG8gYWRkIGFuIGVudHJ5IGZv
ciA4ODIxY3MgdG8gcnRsX2JsdWV0b290aF9vZl9tYXRjaCBpbgpoY2lfaDUuYwoKPiBUaGFuayB5
b3UuCj4KPiBPbiBGcmksIE1hciAxMCwgMjAyMyBhdCAxMDoyNeKAr0FNIENocmlzIE1vcmdhbiA8
bWFjcm9hbHBoYTgyQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gSSBzaHVkZGVyIHRvIGJyaW5n
IHRoaXMgdXAgbm93LCBidXQgSSdtIGVuY291bnRlcmluZyBhIG5ldyBidWcgYW5kCj4gPiBtaWdo
dCBoYXZlIHRvIHdpdGhkcmF3IHRoaXMuCj4gPgo+ID4gSSdtIHJlY2VpdmluZyBlcnJvcnMgaW4g
ZG1lc2cgb2YgdGhlIGZvbGxvd2luZywgYW5kIEkgY2FuJ3Qgc2VlbSB0bwo+ID4gZmlndXJlIG91
dCB0aGUgcm9vdCBjYXVzZToKPiA+IEJsdWV0b290aDogaGNpMDogT3V0LW9mLW9yZGVyIHBhY2tl
dCBhcnJpdmVkCj4gPgo+ID4gQW55IHRob3VnaHRzIG9uIHdoYXQgbWlnaHQgY2F1c2UgaXQ/Cj4g
PiBUaGFuayB5b3UuCj4gPgo+ID4gT24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgOToyMuKAr0FNIENo
cmlzIE1vcmdhbiA8bWFjcm9hbHBoYTgyQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEZy
b206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPiA+Cj4gPiA+IFJU
TDg4MjFDUyBpcyBhIFdpRmkgKyBCbHVldG9vdGggY29tYm8gY2hpcCBmcm9tIFJlYWx0ZWsgdGhh
dCBwcm92aWRlcwo+ID4gPiBXaUZpIEEvQi9HL04vQUMgb3ZlciBhbiBTRElPIGludGVyZmFjZSBh
bmQgQmx1ZXRvb3RoIDQuMiBvdmVyIGEgVUFSVAo+ID4gPiBpbnRlcmZhY2UuCj4gPiA+Cj4gPiA+
IE5vdGUgdGhhdCB0aGUgZmlybXdhcmUgdGhpcyB3YXMgdGVzdGVkIHdpdGggd2FzIGZpcm13YXJl
IHZlcnNpb24KPiA+ID4gMHg3NWI4ZjA5OC4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2
ZXJzL2JsdWV0b290aC9idHJ0bC5jIHwgOCArKysrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ibHVldG9v
dGgvYnRydGwuYyBiL2RyaXZlcnMvYmx1ZXRvb3RoL2J0cnRsLmMKPiA+ID4gaW5kZXggNjljM2Zl
NjQ5Y2E3Li43Mjk0N2QzMTlmYTYgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvYmx1ZXRvb3Ro
L2J0cnRsLmMKPiA+ID4gKysrIGIvZHJpdmVycy9ibHVldG9vdGgvYnRydGwuYwo+ID4gPiBAQCAt
MTI4LDYgKzEyOCwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlkX3RhYmxlIGljX2lkX3RhYmxl
W10gPSB7Cj4gPiA+ICAgICAgICAgICAuZndfbmFtZSAgPSAicnRsX2J0L3J0bDg4MjFjX2Z3LmJp
biIsCj4gPiA+ICAgICAgICAgICAuY2ZnX25hbWUgPSAicnRsX2J0L3J0bDg4MjFjX2NvbmZpZyIg
fSwKPiA+ID4KPiA+ID4gKyAgICAgICAvKiA4ODIxQ1MgKi8KPiA+ID4gKyAgICAgICB7IElDX0lO
Rk8oUlRMX1JPTV9MTVBfODgyMUEsIDB4YywgMHg4LCBIQ0lfVUFSVCksCj4gPiA+ICsgICAgICAg
ICAuY29uZmlnX25lZWRlZCA9IHRydWUsCj4gPiA+ICsgICAgICAgICAuaGFzX3JvbV92ZXJzaW9u
ID0gdHJ1ZSwKPiA+ID4gKyAgICAgICAgIC5oYXNfbXNmdF9leHQgPSB0cnVlLAo+ID4gPiArICAg
ICAgICAgLmZ3X25hbWUgID0gInJ0bF9idC9ydGw4ODIxY3NfZncuYmluIiwKPiA+ID4gKyAgICAg
ICAgIC5jZmdfbmFtZSA9ICJydGxfYnQvcnRsODgyMWNzX2NvbmZpZyIgfSwKPiA+ID4gKwo+ID4g
PiAgICAgICAgIC8qIDg3NjFBICovCj4gPiA+ICAgICAgICAgeyBJQ19JTkZPKFJUTF9ST01fTE1Q
Xzg3NjFBLCAweGEsIDB4NiwgSENJX1VTQiksCj4gPiA+ICAgICAgICAgICAuY29uZmlnX25lZWRl
ZCA9IGZhbHNlLAo+ID4gPiAtLQo+ID4gPiAyLjM0LjEKPiA+ID4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
