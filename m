Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE126C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 09:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MU96rKsvkE2ikGON4uOJj/IQ1U9coaLvTPYvxyKknWw=; b=MRGKPZva19j9LX
	PmFFShb+idJMQ4lYJ9hZfe89fSKnr6Iuxj3EMS8ZrbmNyT/PO2IXy2C6MX8CmH12FeqawR2WQs25L
	zsVQdVlknfHxNd4gSiIUaL5fPWhEonkrLzi4I/NgKtvBURFdDmofPUVut0076H8MnUDrdVshRjxBp
	9Y1Ru/OPO0OkNAWrnPlO/KLmfXMopjXKNd6drvXHRYvPtH/rY+W61GMaI9Jy0AVW3igSLSvaQHu6s
	lzxvqtQfPKW1M7X9AEdkBIbzm0WYpwVDDUvyrPNJfC5YtWRulExnHo2vD9qWH0OFAMLCp7bZvyz9w
	FdxxAmv1E+EiKgDlQ3qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAcf-00000006SKs-3Oj7;
	Wed, 14 Aug 2024 09:48:53 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAcd-00000006SKS-1gYu;
	Wed, 14 Aug 2024 09:48:52 +0000
Received: by mail-qt1-x829.google.com with SMTP id d75a77b69052e-44fe9aa3bfaso37399671cf.0;
        Wed, 14 Aug 2024 02:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723628930; x=1724233730; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7E9dz5B79iMiE9YR//5bouzEa+H1xHgYZ6HkutyLa1Y=;
        b=LzZosH+CrBuIvv1P72UIyMH5Ocy1cHSr9jYFDmqT1HU4AGQW5IB66z3UqUo3JKzj7z
         jAOb9ippmJjjYFWu64K1lPtY/iCPIo8OV+fPyzCozbM9v79lC9xvo2/oqPyvSHXC84xk
         SbA0DHoKM9tDSne75wpXLHRasDQfZQE7onXEeJ+UTot+WYhBXUw3rYUeFIL5itxej/3t
         xkhPwi6dgHiQ77WqNmqvxZIMHqxXQGiFCh9AATxJgawXe+rtqT3ALUCkIY+O1JK8MJ1P
         TcKx1UkeAAgxpLO9No9dysa8ayN+9rx15UBy7jVcBVuiwF1WgEhH8LoM13xs8nad8hHW
         SA4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723628930; x=1724233730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7E9dz5B79iMiE9YR//5bouzEa+H1xHgYZ6HkutyLa1Y=;
        b=ol2/XduYKrtPUmY49WSOODPlGAmz1m2KrvR+YGJwTq/+nKXUc8bGmyAqNFHdPoMLLK
         EZFBZ1cX4ERKy03myL75vls9z0+IPjfd4GKA7EZLQ8FzQ0Uvn6+quYxWB5LRSjMW9t0a
         tHnRzRtZcsl9odMmPtYxV3MQXa3sVxplv7ahq0u2Z2IgXKy+xABxQq9DIlspfPrssK5i
         T+loLg0a2WIDDbgG2QMSA7o5pgQBD5QvXiWrzoiJ4Z9Z8NyquCVV8GZ8nQlVVomtjjgD
         UDvX/MvcmtPB4jNmZhVAYPAf99dVtEyFGsWo5Z33KmcB66jSxe+veO0hHi1LE/fFbaA3
         3WOA==
X-Forwarded-Encrypted: i=1; AJvYcCWg3DU1ATIcEHiRybpWZ5ufo1zGXNhRwtdsP0widhEvSAzln1rDcBKaW/1cUFAIvofhJTlaLxGK/jxeq5HjnOy3wTM7kIKDBq40vbY8bkc7XZsSUt1McW9yYZwUzf4nTboHz8k+HtG/FmMTZo+BGx7zmmeWSZSkY8c=
X-Gm-Message-State: AOJu0YyTTGmkLssIMgahMTVm/+kFXZBd1pyfasLLd2HO+Bb7yJLTbn+g
	JmsGrx9Sic5r30gfGy69fQvEtfyaOZG5jflQ7J0d+LuVH0wwqwOVdMGsSYbJ+01AUIh2E4kkVWo
	VmQPT7StzOIoIPrMArPVi7MCs/7E=
X-Google-Smtp-Source: AGHT+IHHkrK7mmSRX+NFljHlJety4di7IkukkrNgDqvQHopRybi91eO1UnO/AUVkPQhhdbCRrGEPu+h2HKURrxKNdnc=
X-Received: by 2002:a05:622a:40cc:b0:447:e562:b6b with SMTP id
 d75a77b69052e-4535bbd981fmr26069981cf.64.1723628930043; Wed, 14 Aug 2024
 02:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <20240813082007.2625841-1-jacobe.zang@wesion.com>
 <20240813082007.2625841-5-jacobe.zang@wesion.com> <721da64c-42ec-4be6-8ad3-e2685a84823a@broadcom.com>
 <2269063.vFx2qVVIhK@latitude-fedora> <fa019ee9-3f4d-4bea-92a7-929713518dc9@wesion.com>
In-Reply-To: <fa019ee9-3f4d-4bea-92a7-929713518dc9@wesion.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 14 Aug 2024 12:48:39 +0300
Message-ID: <CABjd4YwTbG8pm_xwrOVtVwMwvarvz2SB9bapH3LDMqPn6pH9Ew@mail.gmail.com>
Subject: Re: [PATCH v10 4/5] wifi: brcmfmac: Add optional lpo clock enable support
To: Jacobe Zang <jacobe.zang@wesion.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, 
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	conor+dt@kernel.org, linux-rockchip@lists.infradead.org, 
	efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, arend@broadcom.com, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, megi@xff.cz, 
	duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net, 
	brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com, 
	nick@khadas.com, Sai Krishna <saikrishnag@marvell.com>, 
	Arend van Spriel <arend.vanspriel@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_024851_484102_7D50E60B 
X-CRM114-Status: GOOD (  29.56  )
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

T24gV2VkLCBBdWcgMTQsIDIwMjQgYXQgMTI6MjfigK9QTSBKYWNvYmUgWmFuZyA8amFjb2JlLnph
bmdAd2VzaW9uLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gT24gMjAyNC84LzE0IDE2OjQ3LCBBbGV4ZXkg
Q2hhcmtvdiB3cm90ZToKPiA+IEhpIEFyZW5kLCBKYWNvYmUsCj4gPgo+ID4gT24gVHVlc2RheSwg
QXVndXN0IDEzLCAyMDI0IDI6NTc6MjjigK9QTSBHTVQrMyBBcmVuZCB2YW4gU3ByaWVsIHdyb3Rl
Ogo+ID4+IE9uIDgvMTMvMjAyNCAxMDoyMCBBTSwgSmFjb2JlIFphbmcgd3JvdGU6Cj4gPj4+IFdp
RmkgbW9kdWxlcyBvZnRlbiByZXF1aXJlIDMya0h6IGNsb2NrIHRvIGZ1bmN0aW9uLiBBZGQgc3Vw
cG9ydCB0bwo+ID4+PiBlbmFibGUgdGhlIGNsb2NrIHRvIFBDSWUgZHJpdmVyIGFuZCBtb3ZlICJi
cmNtLGJjbTQzMjktZm1hYyIgY2hlY2sKPiA+Pj4gdG8gdGhlIHRvcCBvZiBicmNtZl9vZl9wcm9i
ZS4gQ2hhbmdlIGZ1bmN0aW9uIHByb3RvdHlwZXMgZnJvbSB2b2lkCj4gPj4+IHRvIGludCBhbmQg
YWRkIGFwcHJvcHJpYXRlIGVycm5vJ3MgZm9yIHJldHVybiB2YWx1ZXMgdGhhdCB3aWxsIGJlCj4g
Pj4+IHNlbmQgdG8gYnVzIHdoZW4gZXJyb3Igb2NjdXJyZWQuCj4gPj4KPiA+PiBJIHdhcyBnb2lu
ZyB0byBzYXkgaXQgbG9va3MgZ29vZCB0byBtZSwgYnV0Li4uLgo+ID4+Cj4gPj4+IENvLWRldmVs
b3BlZC1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6
IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+ID4+PiBDby1kZXZlbG9wZWQtYnk6IEFyZW5k
IHZhbiBTcHJpZWwgPGFyZW5kLnZhbnNwcmllbEBicm9hZGNvbS5jb20+Cj4gPj4+IFNpZ25lZC1v
ZmYtYnk6IEFyZW5kIHZhbiBTcHJpZWwgPGFyZW5kLnZhbnNwcmllbEBicm9hZGNvbS5jb20+Cj4g
Pj4+IFJldmlld2VkLWJ5OiBTYWkgS3Jpc2huYSA8c2Fpa3Jpc2huYWdAbWFydmVsbC5jb20+Cj4g
Pj4+IFNpZ25lZC1vZmYtYnk6IEphY29iZSBaYW5nIDxqYWNvYmUuemFuZ0B3ZXNpb24uY29tPgo+
ID4+PiAtLS0KPiA+Pj4KPiA+Pj4gICAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9i
Y21zZGguYyAgICAgIHwgIDQgKy0KPiA+Pj4gICAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNt
Zm1hYy9jb21tb24uYyAgICAgIHwgIDMgKy0KPiA+Pj4gICAgLi4uL3dpcmVsZXNzL2Jyb2FkY29t
L2JyY204MDIxMS9icmNtZm1hYy9vZi5jIHwgNTMgKysrKysrKysrKystLS0tLS0tLQo+ID4+PiAg
ICAuLi4vd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmggfCAgOSArKy0t
Cj4gPj4+ICAgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvcGNpZS5jICAgICAgICB8
ICAzICsrCj4gPj4+ICAgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvc2Rpby5jICAg
ICAgICB8IDIyICsrKysrLS0tCj4gPj4+ICAgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZt
YWMvdXNiLmMgICAgICAgICB8ICAzICsrCj4gPj4+ICAgIDcgZmlsZXMgY2hhbmdlZCwgNjEgaW5z
ZXJ0aW9ucygrKSwgMzYgZGVsZXRpb25zKC0pCj4gPj4KPiA+PiBbLi4uXQo+ID4+Cj4gPj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZt
YWMvb2YuYwo+ID4+PiBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9i
cmNtZm1hYy9vZi5jIGluZGV4Cj4gPj4+IGU0MDZlMTE0ODFhNjIuLmYxOWRjNzM1NWUwZTggMTAw
NjQ0Cj4gPj4+IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9i
cmNtZm1hYy9vZi5jCj4gPj4+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2Jy
Y204MDIxMS9icmNtZm1hYy9vZi5jCj4gPj4KPiA+PiBbLi4uXQo+ID4+Cj4gPj4+IEBAIC0xMTMs
MzMgKzExOCwzOSBAQCB2b2lkIGJyY21mX29mX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwgZW51
bQo+ID4+PiBicmNtZl9idXNfdHlwZSBidXNfdHlwZSw+Cj4gPj4+ICAgICAgICAgICAgIG9mX25v
ZGVfcHV0KHJvb3QpOwo+ID4+Pgo+ID4+PiAgICAgfQo+ID4+Pgo+ID4+PiAtICAgaWYgKCFucCB8
fCAhb2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUobnAsICJicmNtLGJjbTQzMjktZm1hYyIpKQo+ID4+
PiAtICAgICAgICAgICByZXR1cm47Cj4gPj4+IC0KPiA+Pj4KPiA+Pj4gICAgIGVyciA9IGJyY21m
X29mX2dldF9jb3VudHJ5X2NvZGVzKGRldiwgc2V0dGluZ3MpOwo+ID4+PiAgICAgaWYgKGVycikK
PiA+Pj4KPiA+Pj4gICAgICAgICAgICAgYnJjbWZfZXJyKCJmYWlsZWQgdG8gZ2V0IE9GIGNvdW50
cnkgY29kZSBtYXAgKGVycj0lZCkKPiA+IFxuIiwgZXJyKTsKPiA+Pj4KPiA+Pj4gICAgIG9mX2dl
dF9tYWNfYWRkcmVzcyhucCwgc2V0dGluZ3MtPm1hYyk7Cj4gPj4+Cj4gPj4+IC0gICBpZiAoYnVz
X3R5cGUgIT0gQlJDTUZfQlVTVFlQRV9TRElPKQo+ID4+PiAtICAgICAgICAgICByZXR1cm47Cj4g
Pj4+ICsgICBpZiAoYnVzX3R5cGUgPT0gQlJDTUZfQlVTVFlQRV9TRElPKSB7Cj4gPj4KPiA+PiBE
b24ndCBsaWtlIHRoZSBmYWN0IHRoYXQgdGhpcyBub3cgaGFzIGFuIGV4dHJhIGluZGVudGF0aW9u
IGxldmVsIGFuZCBpdAo+ID4+IG9mZmVycyBubyBleHRyYSBiZW5lZml0LiBKdXN0IGtlZXAgdGhl
IG9yaWdpbmFsIGlmLXN0YXRlbWVudCBhbmQgcmV0dXJuCj4gPj4gMC4gQ29uc2VxdWVudGx5IHRo
ZSBMUE8gY2xvY2sgY29kZSBzaG91bGQgbW92ZSBqdXN0IGJlZm9yZSB0aGUgaWYtc3RhdGVtZW50
Lgo+ID4+PiArICAgICAgICAgICBpZiAob2ZfcHJvcGVydHlfcmVhZF91MzIobnAsICJicmNtLGRy
aXZlLXN0cmVuZ3RoIiwKPiA+ICZ2YWwpID09IDApCj4gPj4+ICsgICAgICAgICAgICAgICAgICAg
c2Rpby0+ZHJpdmVfc3RyZW5ndGggPSB2YWw7Cj4gPj4+Cj4gPj4+IC0gICBpZiAob2ZfcHJvcGVy
dHlfcmVhZF91MzIobnAsICJicmNtLGRyaXZlLXN0cmVuZ3RoIiwgJnZhbCkgPT0gMCkKPiA+Pj4g
LSAgICAgICAgICAgc2Rpby0+ZHJpdmVfc3RyZW5ndGggPSB2YWw7Cj4gPj4+ICsgICAgICAgICAg
IC8qIG1ha2Ugc3VyZSB0aGVyZSBhcmUgaW50ZXJydXB0cyBkZWZpbmVkIGluIHRoZSBub2RlICov
Cj4gPj4+ICsgICAgICAgICAgIGlmICghb2ZfcHJvcGVydHlfcHJlc2VudChucCwgImludGVycnVw
dHMiKSkKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+Pj4KPiA+Pj4gLSAg
IC8qIG1ha2Ugc3VyZSB0aGVyZSBhcmUgaW50ZXJydXB0cyBkZWZpbmVkIGluIHRoZSBub2RlICov
Cj4gPj4+IC0gICBpZiAoIW9mX3Byb3BlcnR5X3ByZXNlbnQobnAsICJpbnRlcnJ1cHRzIikpCj4g
Pj4+IC0gICAgICAgICAgIHJldHVybjsKPiA+Pj4gKyAgICAgICAgICAgaXJxID0gaXJxX29mX3Bh
cnNlX2FuZF9tYXAobnAsIDApOwo+ID4+PiArICAgICAgICAgICBpZiAoIWlycSkgewo+ID4+PiAr
ICAgICAgICAgICAgICAgICAgIGJyY21mX2VycigiaW50ZXJydXB0IGNvdWxkIG5vdCBiZQo+ID4g
bWFwcGVkXG4iKTsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+Pj4gKyAg
ICAgICAgICAgfQo+ID4+PiArICAgICAgICAgICBpcnFmID0gaXJxZF9nZXRfdHJpZ2dlcl90eXBl
KGlycV9nZXRfaXJxX2RhdGEoaXJxKSk7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgICAgICAgc2Rpby0+
b29iX2lycV9zdXBwb3J0ZWQgPSB0cnVlOwo+ID4+PiArICAgICAgICAgICBzZGlvLT5vb2JfaXJx
X25yID0gaXJxOwo+ID4+PiArICAgICAgICAgICBzZGlvLT5vb2JfaXJxX2ZsYWdzID0gaXJxZjsK
PiA+Pj4gKyAgIH0KPiA+Pj4KPiA+Pj4gLSAgIGlycSA9IGlycV9vZl9wYXJzZV9hbmRfbWFwKG5w
LCAwKTsKPiA+Pj4gLSAgIGlmICghaXJxKSB7Cj4gPj4+IC0gICAgICAgICAgIGJyY21mX2Vycigi
aW50ZXJydXB0IGNvdWxkIG5vdCBiZSBtYXBwZWRcbiIpOwo+ID4+PiAtICAgICAgICAgICByZXR1
cm47Cj4gPj4+ICsgICBjbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWxfZW5hYmxlZChkZXYsICJs
cG8iKTsKPiA+Pj4gKyAgIGlmICghSVNfRVJSX09SX05VTEwoY2xrKSkgewo+ID4+PiArICAgICAg
ICAgICBicmNtZl9kYmcoSU5GTywgImVuYWJsaW5nIDMya0h6IGNsb2NrXG4iKTsKPiA+Pj4gKyAg
ICAgICAgICAgcmV0dXJuIGNsa19zZXRfcmF0ZShjbGssIDMyNzY4KTsKPiA+Pj4gKyAgIH0gZWxz
ZSB7Cj4gPj4+ICsgICAgICAgICAgIHJldHVybiBQVFJfRVJSX09SX1pFUk8oY2xrKTsKPiA+Pj4K
PiA+Pj4gICAgIH0KPiA+Pgo+ID4+IENoYW5nZSB0aGlzIHRvOgo+ID4+ICAgPiArICAgICAgICBj
bGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWxfZW5hYmxlZChkZXYsICJscG8iKTsKPiA+PiAgID4g
KyAgICAgICAgaWYgKElTX0VSUl9PUl9OVUxMKGNsaykpIHsKPiA+PiAgID4gKyAgICAgICAgICAg
ICAgICByZXR1cm4gUFRSX0VSUl9PUl9aRVJPKGNsayk7Cj4gPgo+ID4gUGVyaGFwcyBpbiB0aGlz
IGNhc2Ugd2Ugc2hvdWxkIGdvIGZvciBJU19FUlIgYW5kIFBUUl9FUlIgcmVzcGVjdGl2ZWx5Lgo+
ID4gZGV2bV9jbGtfZ2V0X29wdGlvbmFsX2VuYWJsZWQgd291bGQgcmV0dXJuIE5VTEwgd2hlbiB0
aGUgb3B0aW9uYWwgY2xvY2sgaXMgbm90Cj4gPiBmb3VuZCwgc28gTlVMTCBpcyBub3QgYW4gZXJy
b3Igc3RhdGUgYnV0IHNlcnZlcyBhcyBhIGR1bW15IGNsb2NrIHRoYXQgY2FuIGJlPiB1c2VkIHdp
dGggY2xrX3NldF9yYXRlLgo+Cj4gSSB0aGluayB3ZSBkb24ndCBuZWVkIHRvIHNldCBjbG9jayBy
YXRlIGZvciBjbG9jayBpcyBOVUxMLiBTbyBpdCBzaG91bGQKPiBiZSBjaGFuZ2VkIHRvOgo+Cj4g
KyAgICAgICBjbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWxfZW5hYmxlZChkZXYsICJscG8iKTsK
PiArICAgICAgIGlmIChJU19FUlIoY2xrKSkgewo+ICsgICAgICAgICAgICAgICByZXR1cm4gUFRS
X0VSUihjbGspOwo+ICsgICAgICAgfSBlbHNlIGlmIChjbGspIHsKPiArICAgICAgICAgICAgICAg
YnJjbWZfZGJnKElORk8sICJlbmFibGluZyAzMmtIeiBjbG9ja1xuIik7Cj4gKyAgICAgICAgICAg
ICAgIGNsa19zZXRfcmF0ZShjbGssIDMyNzY4KTsKPiArICAgICAgIH0KCklmIGNsayBpcyBOVUxM
IHRoZW4gY2xrX3NldF9yYXRlIHJldHVybnMgaW1tZWRpYXRlbHkgd2l0aCBzdGF0dXMgemVybywK
c28gdGhlcmUgaXMgbGl0dGxlIGRpZmZlcmVuY2UgZnJvbSB3aGV0aGVyIHlvdSB3cmFwIGl0IGlu
dG8gYW5vdGhlciBpZgooY2xrKSBvciBub3QuIFlvdSBjYW4gcHJvYmFibHkgZHJvcCB0aGUgZGVi
dWcgc3RhdGVtZW50IGFsdG9nZXRoZXIgYW5kCmNhbGwgY2xrX3NldF9yYXRlIHVuY29uZGl0aW9u
YWxseSAtIHRoaXMgd2lsbCBsb29rIG5lYXRlci4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
