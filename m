Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CD18C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 10:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oewC6s8bNiM195dXt5Thm/2uHqQwiShjF9IiZFCtIBI=; b=Fnm2T+KsLrAz7S
	b9EQO59cDpkRANgNBfbS0ru74cWS4CzZYIK18iMJGQJ/thYm1eaaWc0WXEuvolMjTXstcshn0IHZv
	RyQrIa8tkqZl0WmdMow1TgPhukJAtMsKkb8xIe2sgztwQ52pWleYOlZ8y8b+NziVsYXQP8GW3NA5C
	lEWVsZzpV02Da8Ot5ENdYXY+q+EIV8QShDHNkli14YfKmZZI7dq+HsH3aXw6EASenzawgLWzn1+we
	jaT3gOflssVsK1vxqeV1q2bTlI4cNdS38ibPGFT3msri5jF9CO82VSWKdbacjY4apSeGh8Sf5uINg
	UjH++LcdJQpZObii1dcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAo8-00000006U40-1iqr;
	Wed, 14 Aug 2024 10:00:44 +0000
Received: from mail-lf1-f49.google.com ([209.85.167.49])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9f1-00000006Gof-1Mi5;
	Wed, 14 Aug 2024 08:47:16 +0000
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52f025bc147so7419425e87.3;
        Wed, 14 Aug 2024 01:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723625233; x=1724230033; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v93U00J3W/G+3iiDSm+KOsmeueDudNy3zc5gSs6I6cA=;
        b=Yn2AleP5dHZTxrsDMZZBZI60zrVUyN9iQiUd6LaQnqGoTqv0DbrhA8Nb5uGByYBjer
         h/D9MW/bL8cGyNm4/zmLkdSeG4MSM3GjE5MzxEQZtBGi8cpgT871Ki7GGNsETEYTZ8qi
         CsI2zTwskl29k+XjXJu0nw8D3dJwKxJihJnredSpIUQ9BtDbbDOq/45dNvupolIjpfd+
         rhQEdeHMr37J6QMTjTzGRRsB9WlJO0i/1g5re8cbFWiNJlOnEJI4kq1rN36VD7EV5dW8
         xdAgpYhboIFXGfE7OPIGOBVr6tcVL8/FJ8kYGRPLUT2U+L28+mKP2CvWJlohufr2ct2G
         S7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723625233; x=1724230033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v93U00J3W/G+3iiDSm+KOsmeueDudNy3zc5gSs6I6cA=;
        b=rOKFH+glRDOZZR3yu1DLuHJSf0DqekEuHEa3uYTatKnQ+NiEy6mojBUedd8hFA7Sh7
         sR5BmtN6yG/P95M8+QKO8c4VBP99370hkqj6qmGMC7Pthl7lFmWsI7zdDJvJNviH7Qau
         mLqadoiI4NWt0CEfWCzkTa0/ptt43IFLhIPZckSYc5fXIFMpTUWClryrbMSFt2EMiFrV
         pLGLaMhaZVWnlPWsJryadMf6JYJqwHuX+Irn/jwHp1LYZKzF1PKjD5Nw7jNz2V6PanmH
         MR6RqLDKc2jhrQ4/HQ+QBOrkX3kabzC/7oWJ1qNf1dewLfbcS0eILWXwX3na8MuxmXi7
         ++gg==
X-Forwarded-Encrypted: i=1; AJvYcCUkAVp3YIitn8BtaW8h1GOkytF4p9q1tR9hsKYZ0gxKn6SBwb4YgVSJO/lK/rwylGhRmfbH9IqLVARfTBFxnTFL/49gzZvp52X/HcpS55uIJK8STgAdV+354Karv1T+2dX3HZfYHUACT7+Q/UQlpDhUZqTW5fDgBzc=
X-Gm-Message-State: AOJu0YwcoHuWwVI/cJrcfUkuxEl9f67VVlX4cUNQBVWyR7Vcf4rC7acf
	6i1An4TsHkfKEymHnuWi9rtAe0/nPzXC5r6EccRyLBT3Q8N5RveuhpBSRhrjZMOUyA==
X-Google-Smtp-Source: AGHT+IH4EjACtsvCABaDeBjsVWwwYox558+OITuZDnWDDQJqpAVHjQXpEtVnsv3StoTxLrge71ISzA==
X-Received: by 2002:a05:6512:118f:b0:516:d219:3779 with SMTP id 2adb3069b0e04-532edbd5a4emr1271567e87.58.1723625232130;
        Wed, 14 Aug 2024 01:47:12 -0700 (PDT)
Received: from latitude-fedora.localnet ([194.247.191.114])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53200f42241sm1180073e87.265.2024.08.14.01.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2024 01:47:11 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
To: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org,
 linux-rockchip@lists.infradead.org
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net,
 brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com,
 nick@khadas.com, Sai Krishna <saikrishnag@marvell.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: Re: [PATCH v10 4/5] wifi: brcmfmac: Add optional lpo clock enable support
Date: Wed, 14 Aug 2024 11:47:09 +0300
Message-ID: <2269063.vFx2qVVIhK@latitude-fedora>
In-Reply-To: <721da64c-42ec-4be6-8ad3-e2685a84823a@broadcom.com>
References: <20240813082007.2625841-1-jacobe.zang@wesion.com>
 <20240813082007.2625841-5-jacobe.zang@wesion.com>
 <721da64c-42ec-4be6-8ad3-e2685a84823a@broadcom.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_014715_419562_C85B77C5 
X-CRM114-Status: GOOD (  26.15  )
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

SGkgQXJlbmQsIEphY29iZSwKCk9uIFR1ZXNkYXksIEF1Z3VzdCAxMywgMjAyNCAyOjU3OjI44oCv
UE0gR01UKzMgQXJlbmQgdmFuIFNwcmllbCB3cm90ZToKPiBPbiA4LzEzLzIwMjQgMTA6MjAgQU0s
IEphY29iZSBaYW5nIHdyb3RlOgo+ID4gV2lGaSBtb2R1bGVzIG9mdGVuIHJlcXVpcmUgMzJrSHog
Y2xvY2sgdG8gZnVuY3Rpb24uIEFkZCBzdXBwb3J0IHRvCj4gPiBlbmFibGUgdGhlIGNsb2NrIHRv
IFBDSWUgZHJpdmVyIGFuZCBtb3ZlICJicmNtLGJjbTQzMjktZm1hYyIgY2hlY2sKPiA+IHRvIHRo
ZSB0b3Agb2YgYnJjbWZfb2ZfcHJvYmUuIENoYW5nZSBmdW5jdGlvbiBwcm90b3R5cGVzIGZyb20g
dm9pZAo+ID4gdG8gaW50IGFuZCBhZGQgYXBwcm9wcmlhdGUgZXJybm8ncyBmb3IgcmV0dXJuIHZh
bHVlcyB0aGF0IHdpbGwgYmUKPiA+IHNlbmQgdG8gYnVzIHdoZW4gZXJyb3Igb2NjdXJyZWQuCj4g
Cj4gSSB3YXMgZ29pbmcgdG8gc2F5IGl0IGxvb2tzIGdvb2QgdG8gbWUsIGJ1dC4uLi4KPiAKPiA+
IENvLWRldmVsb3BlZC1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+IENvLWRldmVsb3BlZC1ieTog
QXJlbmQgdmFuIFNwcmllbCA8YXJlbmQudmFuc3ByaWVsQGJyb2FkY29tLmNvbT4KPiA+IFNpZ25l
ZC1vZmYtYnk6IEFyZW5kIHZhbiBTcHJpZWwgPGFyZW5kLnZhbnNwcmllbEBicm9hZGNvbS5jb20+
Cj4gPiBSZXZpZXdlZC1ieTogU2FpIEtyaXNobmEgPHNhaWtyaXNobmFnQG1hcnZlbGwuY29tPgo+
ID4gU2lnbmVkLW9mZi1ieTogSmFjb2JlIFphbmcgPGphY29iZS56YW5nQHdlc2lvbi5jb20+Cj4g
PiAtLS0KPiA+IAo+ID4gICAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2JjbXNkaC5j
ICAgICAgfCAgNCArLQo+ID4gICAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2NvbW1v
bi5jICAgICAgfCAgMyArLQo+ID4gICAuLi4vd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2Jy
Y21mbWFjL29mLmMgfCA1MyArKysrKysrKysrKy0tLS0tLS0tCj4gPiAgIC4uLi93aXJlbGVzcy9i
cm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvb2YuaCB8ICA5ICsrLS0KPiA+ICAgLi4uL2Jyb2Fk
Y29tL2JyY204MDIxMS9icmNtZm1hYy9wY2llLmMgICAgICAgIHwgIDMgKysKPiA+ICAgLi4uL2Jy
b2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9zZGlvLmMgICAgICAgIHwgMjIgKysrKystLS0KPiA+
ICAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy91c2IuYyAgICAgICAgIHwgIDMgKysK
PiA+ICAgNyBmaWxlcyBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkK
PiAKPiBbLi4uXQo+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2Fk
Y29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jCj4gPiBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jy
b2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jIGluZGV4Cj4gPiBlNDA2ZTExNDgxYTYyLi5m
MTlkYzczNTVlMGU4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRj
b20vYnJjbTgwMjExL2JyY21mbWFjL29mLmMKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jCj4gCj4gWy4uLl0KPiAKPiA+IEBAIC0x
MTMsMzMgKzExOCwzOSBAQCB2b2lkIGJyY21mX29mX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwg
ZW51bQo+ID4gYnJjbWZfYnVzX3R5cGUgYnVzX3R5cGUsPiAKPiA+ICAgCQlvZl9ub2RlX3B1dChy
b290KTsKPiA+ICAgCQo+ID4gICAJfQo+ID4gCj4gPiAtCWlmICghbnAgfHwgIW9mX2RldmljZV9p
c19jb21wYXRpYmxlKG5wLCAiYnJjbSxiY200MzI5LWZtYWMiKSkKPiA+IC0JCXJldHVybjsKPiA+
IC0KPiA+IAo+ID4gICAJZXJyID0gYnJjbWZfb2ZfZ2V0X2NvdW50cnlfY29kZXMoZGV2LCBzZXR0
aW5ncyk7Cj4gPiAgIAlpZiAoZXJyKQo+ID4gICAJCj4gPiAgIAkJYnJjbWZfZXJyKCJmYWlsZWQg
dG8gZ2V0IE9GIGNvdW50cnkgY29kZSBtYXAgKGVycj0lZCkKXG4iLCBlcnIpOwo+ID4gICAJCj4g
PiAgIAlvZl9nZXRfbWFjX2FkZHJlc3MobnAsIHNldHRpbmdzLT5tYWMpOwo+ID4gCj4gPiAtCWlm
IChidXNfdHlwZSAhPSBCUkNNRl9CVVNUWVBFX1NESU8pCj4gPiAtCQlyZXR1cm47Cj4gPiArCWlm
IChidXNfdHlwZSA9PSBCUkNNRl9CVVNUWVBFX1NESU8pIHsKPiAKPiBEb24ndCBsaWtlIHRoZSBm
YWN0IHRoYXQgdGhpcyBub3cgaGFzIGFuIGV4dHJhIGluZGVudGF0aW9uIGxldmVsIGFuZCBpdAo+
IG9mZmVycyBubyBleHRyYSBiZW5lZml0LiBKdXN0IGtlZXAgdGhlIG9yaWdpbmFsIGlmLXN0YXRl
bWVudCBhbmQgcmV0dXJuCj4gMC4gQ29uc2VxdWVudGx5IHRoZSBMUE8gY2xvY2sgY29kZSBzaG91
bGQgbW92ZSBqdXN0IGJlZm9yZSB0aGUgaWYtc3RhdGVtZW50Lgo+ID4gKwkJaWYgKG9mX3Byb3Bl
cnR5X3JlYWRfdTMyKG5wLCAiYnJjbSxkcml2ZS1zdHJlbmd0aCIsIAomdmFsKSA9PSAwKQo+ID4g
KwkJCXNkaW8tPmRyaXZlX3N0cmVuZ3RoID0gdmFsOwo+ID4gCj4gPiAtCWlmIChvZl9wcm9wZXJ0
eV9yZWFkX3UzMihucCwgImJyY20sZHJpdmUtc3RyZW5ndGgiLCAmdmFsKSA9PSAwKQo+ID4gLQkJ
c2Rpby0+ZHJpdmVfc3RyZW5ndGggPSB2YWw7Cj4gPiArCQkvKiBtYWtlIHN1cmUgdGhlcmUgYXJl
IGludGVycnVwdHMgZGVmaW5lZCBpbiB0aGUgbm9kZSAqLwo+ID4gKwkJaWYgKCFvZl9wcm9wZXJ0
eV9wcmVzZW50KG5wLCAiaW50ZXJydXB0cyIpKQo+ID4gKwkJCXJldHVybiAwOwo+ID4gCj4gPiAt
CS8qIG1ha2Ugc3VyZSB0aGVyZSBhcmUgaW50ZXJydXB0cyBkZWZpbmVkIGluIHRoZSBub2RlICov
Cj4gPiAtCWlmICghb2ZfcHJvcGVydHlfcHJlc2VudChucCwgImludGVycnVwdHMiKSkKPiA+IC0J
CXJldHVybjsKPiA+ICsJCWlycSA9IGlycV9vZl9wYXJzZV9hbmRfbWFwKG5wLCAwKTsKPiA+ICsJ
CWlmICghaXJxKSB7Cj4gPiArCQkJYnJjbWZfZXJyKCJpbnRlcnJ1cHQgY291bGQgbm90IGJlIApt
YXBwZWRcbiIpOwo+ID4gKwkJCXJldHVybiAwOwo+ID4gKwkJfQo+ID4gKwkJaXJxZiA9IGlycWRf
Z2V0X3RyaWdnZXJfdHlwZShpcnFfZ2V0X2lycV9kYXRhKGlycSkpOwo+ID4gKwo+ID4gKwkJc2Rp
by0+b29iX2lycV9zdXBwb3J0ZWQgPSB0cnVlOwo+ID4gKwkJc2Rpby0+b29iX2lycV9uciA9IGly
cTsKPiA+ICsJCXNkaW8tPm9vYl9pcnFfZmxhZ3MgPSBpcnFmOwo+ID4gKwl9Cj4gPiAKPiA+IC0J
aXJxID0gaXJxX29mX3BhcnNlX2FuZF9tYXAobnAsIDApOwo+ID4gLQlpZiAoIWlycSkgewo+ID4g
LQkJYnJjbWZfZXJyKCJpbnRlcnJ1cHQgY291bGQgbm90IGJlIG1hcHBlZFxuIik7Cj4gPiAtCQly
ZXR1cm47Cj4gPiArCWNsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFibGVkKGRldiwgImxw
byIpOwo+ID4gKwlpZiAoIUlTX0VSUl9PUl9OVUxMKGNsaykpIHsKPiA+ICsJCWJyY21mX2RiZyhJ
TkZPLCAiZW5hYmxpbmcgMzJrSHogY2xvY2tcbiIpOwo+ID4gKwkJcmV0dXJuIGNsa19zZXRfcmF0
ZShjbGssIDMyNzY4KTsKPiA+ICsJfSBlbHNlIHsKPiA+ICsJCXJldHVybiBQVFJfRVJSX09SX1pF
Uk8oY2xrKTsKPiA+IAo+ID4gICAJfQo+IAo+IENoYW5nZSB0aGlzIHRvOgo+ICA+ICsJY2xrID0g
ZGV2bV9jbGtfZ2V0X29wdGlvbmFsX2VuYWJsZWQoZGV2LCAibHBvIik7Cj4gID4gKwlpZiAoSVNf
RVJSX09SX05VTEwoY2xrKSkgewo+ICA+ICsJCXJldHVybiBQVFJfRVJSX09SX1pFUk8oY2xrKTsK
ClBlcmhhcHMgaW4gdGhpcyBjYXNlIHdlIHNob3VsZCBnbyBmb3IgSVNfRVJSIGFuZCBQVFJfRVJS
IHJlc3BlY3RpdmVseS4gCmRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFibGVkIHdvdWxkIHJldHVy
biBOVUxMIHdoZW4gdGhlIG9wdGlvbmFsIGNsb2NrIGlzIG5vdCAKZm91bmQsIHNvIE5VTEwgaXMg
bm90IGFuIGVycm9yIHN0YXRlIGJ1dCBzZXJ2ZXMgYXMgYSBkdW1teSBjbG9jayB0aGF0IGNhbiBi
ZSAKdXNlZCB3aXRoIGNsa19zZXRfcmF0ZS4KClRoaXMgd2F5IHdlIHdvbid0IHNraXAgb3ZlciB0
aGUgaW50ZXJydXB0cyBpbml0aWFsaXphdGlvbiBiZWxvdyBpbiBjYXNlIHRoZSAKY2xvY2sgaXMg
YWJzZW50LgoKPiAgPiArCX0KPiAgPiArCWJyY21mX2RiZyhJTkZPLCAiZW5hYmxpbmcgMzJrSHog
Y2xvY2tcbiIpOwo+ICA+ICsJY2xrX3NldF9yYXRlKGNsaywgMzI3NjgpOwo+IAo+IEFzIHNhaWQg
YWJvdmUgdGhpcyBzaG91bGQgYmUgbW92ZWQgYmVmb3JlIHRoZSBpZi1zdGF0ZW1lbnQ6Cj4gID4g
LQlpZiAoYnVzX3R5cGUgIT0gQlJDTUZfQlVTVFlQRV9TRElPKQo+ICA+IC0JCXJldHVybiAwOwo+
ID4gCj4gPiAtCWlycWYgPSBpcnFkX2dldF90cmlnZ2VyX3R5cGUoaXJxX2dldF9pcnFfZGF0YShp
cnEpKTsKPiA+IAo+ID4gLQlzZGlvLT5vb2JfaXJxX3N1cHBvcnRlZCA9IHRydWU7Cj4gPiAtCXNk
aW8tPm9vYl9pcnFfbnIgPSBpcnE7Cj4gPiAtCXNkaW8tPm9vYl9pcnFfZmxhZ3MgPSBpcnFmOwo+
ID4gKwlyZXR1cm4gMDsKPiA+IAo+ID4gICB9CgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
