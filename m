Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1CFCC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 11:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djW4qs3v8O0XHygY75u4gFOByOVlqSwLMYdfGYEJQGw=; b=DFvBSKuCZJL8k8
	GW5TDC4VrmrUdpNm2Zc2inYSCEnDXhFYT6KIXd9lE9Pgm1JV4HHe/hgRdFgtHUYNir5iFByTbFjub
	ddbFL5NmxwzBQBHYXaGNHTOz+Ir5iqcK8RPST2ksF7tkpbZBt9yeZTwIrugG6gFb00fjhmlXdwT2i
	Fq7kwNKB8DYXROGNFN1XXBLvCP8px4zuL19SUeK5HeFyZVMAcLczC0NuVSa6Y+zc396ugMy3TX1HG
	r/0L2glP86rZeOV5HtzCiqLHnn5jjQuyyy6w4Ak6/5NVw745LoDcCYkO5oz7mB35Hfl31MzQHD+P1
	IHg+3WyZFawZW7GOvyjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7Iy-00000000rx4-2QiI;
	Wed, 31 Jul 2024 11:15:40 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7IT-00000000rqU-3tJg
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 11:15:12 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-7a1c7857a49so3590947a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Jul 2024 04:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722424508; x=1723029308; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kGAZyGhud7vE7vIGusXcM32em4s8MLn39W5gHMldUOQ=;
        b=a9f23DQAVXReGcHgheemY+jHZY6AGukteMDKWQaX0cp6mdNJlW+Sd0vjlqsYRL5Baj
         LERmTK5zWHJiW0K+lNSVitjUhMVJ0JD7JBfNUZPNSLP2gQnz1eIaADp4HWYWejOQ6U8n
         M8XK9JGFRF1SxkzXNsxl3RXXSMps+RRcGecW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722424508; x=1723029308;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kGAZyGhud7vE7vIGusXcM32em4s8MLn39W5gHMldUOQ=;
        b=TwgenAj3teKsIb2ETLSb7leavDctxDWceFeMaWcZaz1uQvgmqGOKB9e/g6D3L+yT5f
         FZF9FRND/E5CV13+flunXKupZ8dMJDSaHEfxj4nRuwFMVtYmm5XzzADqdx6SftSeEqav
         vslt+iozFcyOrb1HgkzyuEUPbUjQyoiE/dF3yxyJL7vovqdbACNEENs56dp27slqXVnL
         CAN2OCn4dTHM2XMMEhjgZyADGtXrgh841tcNWFkaEqaxcKVttzSqrAhnZuwn4Af771Pc
         HfeUZfCoWTFjgWEPNoo2ePkxGSdFFN4Qfpa/qP9S8fPVV8kf7cREZ/ek9geyXob3rN2N
         uqxA==
X-Forwarded-Encrypted: i=1; AJvYcCVO5DTsfJbeFN8CTxPDPJtcnVKzK3p55paUPu01mYhO+sKXnTQkRMJ1ifqpUScY/C/m2+f2ac2lvssrYTdP9X2FXBIxQxOGbCfze75cro1lHo6T
X-Gm-Message-State: AOJu0YxjriTguEPLt+dibwn7SZCSsjaw8z7S1PZ54obfNZacjSzGT5/4
	qIiSKaHZAWcuBKtnSVeJv6FrC3a3dRP5nI36XknY0L6BbmOAyZ88fBswsOQViQ==
X-Google-Smtp-Source: AGHT+IFVgXPWsMgMgE5M0JWQZ4697i/w3bfILr0K1/Zur2SqvYwF+niY0tB9kRNNpEG78NZJZZ88tQ==
X-Received: by 2002:a17:90a:b304:b0:2c9:a88d:26f2 with SMTP id 98e67ed59e1d1-2cf7e86eac7mr12128873a91.36.1722424507487;
        Wed, 31 Jul 2024 04:15:07 -0700 (PDT)
Received: from [192.168.178.137] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cfdc4cf0eesm1054976a91.41.2024.07.31.04.15.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 04:15:07 -0700 (PDT)
Message-ID: <3ded8aea-ee11-43da-9dd7-1259cf931747@broadcom.com>
Date: Wed, 31 Jul 2024 13:14:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
To: Alexey Charkov <alchark@gmail.com>, Jacobe Zang <jacobe.zang@wesion.com>,
 robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, conor+dt@kernel.org
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com,
 minipli@grsecurity.net, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, nick@khadas.com
References: <20240731061132.703368-1-jacobe.zang@wesion.com>
 <20240731061132.703368-5-jacobe.zang@wesion.com>
 <0a78a0fb-0a5e-424f-a801-4a63b9ee1a49@gmail.com>
Content-Language: en-US
From: Arend van Spriel <arend.vanspriel@broadcom.com>
Autocrypt: addr=arend.vanspriel@broadcom.com; keydata=
 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
In-Reply-To: <0a78a0fb-0a5e-424f-a801-4a63b9ee1a49@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_041510_160337_5BFC5CBB 
X-CRM114-Status: GOOD (  30.34  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gNy8zMS8yMDI0IDEyOjE2IFBNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiBIaSBKYWNvYmUs
Cj4gCj4gCj4gT24gMzEvMDcvMjAyNCA5OjExIGFtLCBKYWNvYmUgWmFuZyB3cm90ZToKPiAgPiBX
aUZpIG1vZHVsZXMgb2Z0ZW4gcmVxdWlyZSAzMmtIeiBjbG9jayB0byBmdW5jdGlvbi4gQWRkIHN1
cHBvcnQgdG8KPiAgPiBlbmFibGUgdGhlIGNsb2NrIHRvIFBDSWUgZHJpdmVyIGFuZCBtb3ZlICJi
cmNtLGJjbTQzMjktZm1hYyIgY2hlY2sKPiAgPiB0byB0aGUgdG9wIG9mIGJyY21mX29mX3Byb2Jl
Cj4gID4KPiAgPiBDby1kZXZlbG9wZWQtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+
ICA+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+ICA+IFNpZ25l
ZC1vZmYtYnk6IEphY29iZSBaYW5nIDxqYWNvYmUuemFuZ0B3ZXNpb24uY29tPgo+ICA+IC0tLQo+
ICA+wqAgLi4uL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvb2YuY8Kg
wqDCoCB8IDEyICsrKysrKysrKysrLQo+ICA+wqAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiAgPgo+ICA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93
aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvb2YuYyAKPiBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jCj4gID4gaW5kZXggZTQw
NmUxMTQ4MWE2Mi4uN2UwYTJhZDVjN2M4YSAxMDA2NDQKPiAgPiAtLS0gYS9kcml2ZXJzL25ldC93
aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvb2YuYwo+ICA+ICsrKyBiL2RyaXZl
cnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jCj4gID4gQEAg
LTYsNiArNiw3IEBACj4gID7CoCAjaW5jbHVkZSA8bGludXgvb2YuaD4KPiAgPsKgICNpbmNsdWRl
IDxsaW51eC9vZl9pcnEuaD4KPiAgPsKgICNpbmNsdWRlIDxsaW51eC9vZl9uZXQuaD4KPiAgPiAr
I2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ICA+Cj4gID7CoCAjaW5jbHVkZSA8ZGVmcy5oPgo+ICA+
wqAgI2luY2x1ZGUgImRlYnVnLmgiCj4gID4gQEAgLTcwLDEyICs3MSwxNiBAQCB2b2lkIGJyY21m
X29mX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwgZW51bSAKPiBicmNtZl9idXNfdHlwZSBidXNf
dHlwZSwKPiAgPsKgIHsKPiAgPsKgwqDCoMKgwqAgc3RydWN0IGJyY21mbWFjX3NkaW9fcGQgKnNk
aW8gPSAmc2V0dGluZ3MtPmJ1cy5zZGlvOwo+ICA+wqDCoMKgwqDCoCBzdHJ1Y3QgZGV2aWNlX25v
ZGUgKnJvb3QsICpucCA9IGRldi0+b2Zfbm9kZTsKPiAgPiArwqDCoMKgIHN0cnVjdCBjbGsgKmNs
azsKPiAgPsKgwqDCoMKgwqAgY29uc3QgY2hhciAqcHJvcDsKPiAgPsKgwqDCoMKgwqAgaW50IGly
cTsKPiAgPsKgwqDCoMKgwqAgaW50IGVycjsKPiAgPsKgwqDCoMKgwqAgdTMyIGlycWY7Cj4gID7C
oMKgwqDCoMKgIHUzMiB2YWw7Cj4gID4KPiAgPiArwqDCoMKgIGlmICghbnAgfHwgIW9mX2Rldmlj
ZV9pc19jb21wYXRpYmxlKG5wLCAiYnJjbSxiY200MzI5LWZtYWMiKSkKPiAgPiArwqDCoMKgwqDC
oMKgwqAgcmV0dXJuOwo+IAo+IERpZCB5b3UgdGVzdCB0aGlzPyBUaGUgRFRTIHBhdGNoIHlvdSBz
ZW50IGFzIHBhcnQgb2YgdGhpcyBzZXJpZXMgZG9lc24ndCAKPiBsaXN0ICJicmNtLGJjbTQzMjkt
Zm1hYyIgaW4gdGhlIGNvbXBhdGlibGUsIHNvIHRoaXMgd2lsbCBwcm9iYWJseSByZXR1cm4gCj4g
cmlnaHQgaGVyZSwgc2tpcHBpbmcgb3ZlciB0aGUgcmVzdCBvZiB5b3VyIHBhdGNoLgo+IAo+IFBs
ZWFzZSB0ZXN0IGJlZm9yZSByZXNlbmRpbmcsIGJvdGggd2l0aCBhbmQgd2l0aG91dCB0aGUgZHJp
dmVyIGZvciB0aGUgCj4gQmx1ZXRvb3RoIHBhcnQgb2YgdGhlIGNoaXAgKHNpbmNlIGl0IGFsc28g
dG91Y2hlcyBjbG9ja3MpLgo+IAo+IFlvdSBhcmUgYWxzbyBjaGFuZ2luZyB0aGUgYmVoYXZpb3Ig
Zm9yIG90aGVyIHN5c3RlbXMgYnkgcHV0dGluZyB0aGlzIAo+IGNoZWNrIGZ1cnRoZXIgdXAgdGhl
IHByb2JlIHBhdGgsIHdoaWNoIG1pZ2h0IGJyZWFrIHRoaW5ncyBmb3Igbm8gcmVhc29uLiAKPiBC
ZXR0ZXIgcHV0IHlvdXIgY2xrLXJlbGF0ZWQgYWRkaXRpb24gYmVsb3cgd2hlcmUgdGhpcyBjaGVj
ayB3YXMgCj4gb3JpZ2luYWxseSwgcmF0aGVyIHRoYW4gcmVvcmRlciBzdHVmZiB5b3UgZG9uJ3Qg
aGF2ZSB0byByZW9yZGVyLgoKVGhhdCB3YXMgdXBvbiBteSBzdWdnZXN0aW9uLiBUaGF0IGNoZWNr
IHdhcyBvcmlnaW5hbGx5IGF0IHRoZSB0b3Agb2YgdGhlIApmdW5jdGlvbiwgYnV0IHBlb3BsZSBh
ZGRlZCBzdHVmZiBiZWZvcmUgdGhhdC4gSSBhZ3JlZSB0aGF0IG1ha2VzIHRoZSAKY29tcGF0aWJs
ZSAiYnJjbSxicmNtNDMyOS1mbWFjIiByZXF1aXJlZCB3aGljaCBpcyB3aGF0IHRoZSB0ZXh0dWFs
IApiaW5kaW5nIHN0YXRlZCBiZWZvcmUgdGhlIHN3aXRjaCB0byBZQU1MIHdhcyBtYWRlOgoKIiIi
CkJyb2FkY29tIEJDTTQzeHggRnVsbG1hYyB3aXJlbGVzcyBTRElPIGRldmljZXMKClRoaXMgbm9k
ZSBwcm92aWRlcyBwcm9wZXJ0aWVzIGZvciBjb250cm9sbGluZyB0aGUgQnJvYWRjb20gd2lyZWxl
c3MgCmRldmljZS4gVGhlCm5vZGUgaXMgZXhwZWN0ZWQgdG8gYmUgc3BlY2lmaWVkIGFzIGEgY2hp
bGQgbm9kZSB0byB0aGUgU0RJTyBjb250cm9sbGVyIHRoYXQKY29ubmVjdHMgdGhlIGRldmljZSB0
byB0aGUgc3lzdGVtLgoKUmVxdWlyZWQgcHJvcGVydGllczoKCiAgLSBjb21wYXRpYmxlIDogU2hv
dWxkIGJlICJicmNtLGJjbTQzMjktZm1hYyIuCiIiIgoKTm90IHN1cmUgd2hldGhlciB0aGlzIGlz
IHN0aWxsIHRydWUgZm9yIFlBTUwgdmVyc2lvbiAocG9vciBZQU1MIHJlYWRpbmcgCnNraWxscyA7
LSkgKSwgYnV0IGl0IHNob3VsZCBhcyB0aGUgc3dpdGNoIGZyb20gdGV4dHVhbCB0byBZQU1MIHNo
b3VsZCAKbm90IGhhdmUgY2hhbmdlZCB0aGUgYmluZGluZ3Mgc3BlY2lmaWNhdGlvbi4KCj4gID4g
Kwo+ICA+wqDCoMKgwqDCoCAvKiBBcHBsZSBBUk02NCBwbGF0Zm9ybXMgaGF2ZSB0aGVpciBvd24g
aWRlYSBvZiBib2FyZCB0eXBlLCAKPiBwYXNzZWQgaW4KPiAgPsKgwqDCoMKgwqDCoCAqIHZpYSB0
aGUgZGV2aWNlIHRyZWUuIFRoZXkgYWxzbyBoYXZlIGFuIGFudGVubmEgU0tVIHBhcmFtZXRlcgo+
ICA+wqDCoMKgwqDCoMKgICovCj4gID4gQEAgLTExMyw4ICsxMTgsMTMgQEAgdm9pZCBicmNtZl9v
Zl9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsIGVudW0gCj4gYnJjbWZfYnVzX3R5cGUgYnVzX3R5
cGUsCj4gID7CoMKgwqDCoMKgwqDCoMKgwqAgb2Zfbm9kZV9wdXQocm9vdCk7Cj4gID7CoMKgwqDC
oMKgIH0KPiAgPgo+ICA+IC3CoMKgwqAgaWYgKCFucCB8fCAhb2ZfZGV2aWNlX2lzX2NvbXBhdGli
bGUobnAsICJicmNtLGJjbTQzMjktZm1hYyIpKQo+ICA+ICvCoMKgwqAgY2xrID0gZGV2bV9jbGtf
Z2V0X29wdGlvbmFsX2VuYWJsZWQoZGV2LCAibHBvIik7Cj4gID4gK8KgwqDCoCBpZiAoIUlTX0VS
Ul9PUl9OVUxMKGNsaykpIHsKPiAgPiArwqDCoMKgwqDCoMKgwqAgYnJjbWZfZGJnKElORk8sICJl
bmFibGluZyAzMmtIeiBjbG9ja1xuIik7Cj4gID4gK8KgwqDCoMKgwqDCoMKgIGNsa19zZXRfcmF0
ZShjbGssIDMyNzY4KTsKPiAgPiArwqDCoMKgIH0gZWxzZSB7Cj4gID7CoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuOwo+IAo+IFdoeSByZXR1cm4gaGVyZT8gSWYgdGhlIGNsb2NrIGlzIG9wdGlvbmFs
LCBhIGxvdCBvZiBzeXN0ZW1zIHdpbGwgbm90IAo+IGhhdmUgaXQgLSB0aGF0IHNob3VsZG4ndCBw
cmV2ZW50IHRoZSBkcml2ZXIgZnJvbSBwcm9iaW5nLiBBbmQgeW91IGFyZSAKPiBzdGlsbCBub3Qg
aGFuZGxpbmcgdGhlIC1FUFJPQkVfREVGRVIgY2FzZSB3aGljaCB3YXMgbWVudGlvbmVkIG9uIHlv
dXIgCj4gcHJldmlvdXMgc3VibWlzc2lvbi4KClJpZ2h0LiBUaGUgZWxzZSBzdGF0ZW1lbnQgYWJv
dmUgY291bGQvc2hvdWxkIGJlOgoKfSBlbHNlIGlmIChjbGsgJiYgUFRSX0VSUihjbGspID09IC1F
UFJPQkVfREVGRVIpIHsKICAgICAgICAgcmV0dXJuIFBUUl9FUlIoY2xrKTsKfQoKUmVnYXJkcywK
QXJlbmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
