Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DCDBC27C6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 09:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dg6DYwXIffSNdopClZnpMTHFz5qPLN2m2h//REl5ZCE=; b=kipLWqIrd017kS
	NFX/9UTX85MqrLCTSNqsKODmjOMlrh3cBrUJe23X0+e6aPUkEdnRM3/y1LIWxUAyJ522RYyIrrSUW
	rTX0fB7iNKnTpLmJSijSb2IaG6YzQYItY78ELuh4o96d0a8naPntN9UfmkfEUicz//+7UdcPb1n9+
	K6yutuJ6xa/+KZBDDGmQhG+pnLDQ9MDfACxzShEu3M5F1LmFgB93Ugbvlno6RsGSLGd+VHzXDkshA
	hiDB0EGX7G6TszvYqRcapvNDDsme9J1fgVM4hcsOCGYfSZfj/ZI+r6xIwtt/s4Z73keOs9ywshNFq
	RBoHX0Z+BxKBZo9zoqFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ8MS-00000009xfW-3iZ8;
	Mon, 17 Jun 2024 09:09:12 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ8MP-00000009xer-1XgR;
	Mon, 17 Jun 2024 09:09:10 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-52caebc6137so1855621e87.0;
        Mon, 17 Jun 2024 02:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718615345; x=1719220145; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tHualuQcrcR9FOndaPpRpoW37XnDcV8gKD4pHsnrc4s=;
        b=BPzoCdHzbI8r1mqgahsCBRIcWyv4C6+CxlLLDZm8P2Q1ON8KyS6ko1l2KkAaq/X+08
         knkAM4QKuAYRT4imAKFZ/VZVm5KPOYuCW2PyFpSm+w7LqNw0hq9VaHCX+crybVdmJVGb
         H2C9jXXWaUILzx4O4eegn7yjv4JCRiqMtiTPJU6aiaIn78VasG+rXpdJczoH2iOzRhgo
         ITN19hmx9fmpPILxI0amz5ZfAWILmnxEB3+6npfpOr4z/VngayhnHa3cwSyI8YYx/k58
         dYvR+0cIcxHi+dcGX1nlY9g5Aq7l1l3jeQsuFlBBpxykYBqItzVIxAXYYwi818ftlnbm
         a6Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718615345; x=1719220145;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tHualuQcrcR9FOndaPpRpoW37XnDcV8gKD4pHsnrc4s=;
        b=xP4jfSEL3FYmrsVxPbX5f15rp80cJZrJHlVcY/9LH7RvyrALzCfwAr+/sVA5boAmkN
         i6LAPLQODU8g6hKwooLHga7i24PYU98FNrwjsLhlg+xaMwwucWkmsYGs7PbS8Hn8X1I6
         g2Kw13aFqJv0tZF/XRQlSXmn9aGQ+MDmxXo0qqHKxengM5l+1Tbhqggtc+W/+OCyDm64
         uNe4dLLyp3AljhX07jQQF1quuhjA8ETCdVemskQa3OjFoLcCHivWhtrcbjN/hcPS9yQM
         levsVe/j8QTSSwNhY4fb3Qldo3ZKYdzfRiwWTdSuMLZTVP6RYPKqpTO0LwiIVxlTP8Az
         cQYg==
X-Forwarded-Encrypted: i=1; AJvYcCWJoKnwqRTIqaeMX26fEPpU+WzA1eCEd9AWWEbfwgrLanRwiFyyYnAfhst70iJUcPjB2cD44VZnG6t3yPgBZGCWLU168TeiW9uMFVWOlJ8C8NepM95y+Y20OShb2txJSz2l1HnXmsCkd4e7zV6QjaLIsiMgNlsf2V4=
X-Gm-Message-State: AOJu0YwbTa178HVePhEqY6zrDQoJr3zp05QNHh+oQcLDmIHVSPoEWnzG
	PKhLYcEOwreWOebCoG5dGiuGlCQaeYOfJ0WZFT0rUEySWUr9a2H2ks1n0PJH2mxofg==
X-Google-Smtp-Source: AGHT+IFHVBJp/VFqtV++c4t0//VCdL0P9LDVu7JUn+qUbTIRnLIdZCE653CJVQBQ1vaa46S79Eeekw==
X-Received: by 2002:ac2:555e:0:b0:52c:9a1f:52e7 with SMTP id 2adb3069b0e04-52ca6e988a6mr5758312e87.58.1718615344901;
        Mon, 17 Jun 2024 02:09:04 -0700 (PDT)
Received: from ?IPV6:2001:8f8:183b:6864:7071:8881:6a51:3e82? ([2001:8f8:183b:6864:7071:8881:6a51:3e82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f6127d6dsm154008765e9.26.2024.06.17.02.09.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 02:09:04 -0700 (PDT)
Message-ID: <8ae179e6-3aee-415b-9dc4-298e162fbcad@gmail.com>
Date: Mon, 17 Jun 2024 13:09:00 +0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: Add cpufreq support to
 Khadas Edge2
Content-Language: en-GB
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, Jacobe Zang <jacobe.zang@wesion.com>
Cc: nick@khadas.com, efectn@protonmail.com, jagan@edgeble.ai,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240617071112.3133101-1-jacobe.zang@wesion.com>
 <20240617071112.3133101-6-jacobe.zang@wesion.com> <5475817.tWeucmBOSa@diego>
From: Alexey Charkov <alchark@gmail.com>
In-Reply-To: <5475817.tWeucmBOSa@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_020909_432736_BAA287FD 
X-CRM114-Status: GOOD (  12.76  )
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

Ck9uIDE3LzA2LzIwMjQgMTE6MzMsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhpIEphY29iZSBa
YW5nLAo+Cj4gQW0gTW9udGFnLCAxNy4gSnVuaSAyMDI0LCAwOToxMToxMiBDRVNUIHNjaHJpZWIg
SmFjb2JlIFphbmc6Cj4+IFRoaXMgYWRqdXN0IENQVSBub2RlcyBvbiBLaGFkYXMgRWRnZTIuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IEphY29iZSBaYW5nIDxqYWNvYmUuemFuZ0B3ZXNpb24uY29tPgo+
PiAtLS0KPj4gICAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1raGFkYXMtZWRn
ZTIuZHRzIHwgMTIgKysrKysrKysrKy0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMta2hhZGFzLWVkZ2UyLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4cy1raGFkYXMtZWRnZTIuZHRzCj4+IGluZGV4IDdkN2NjM2U3Njgz
OGMuLjVmYjE1ZDNkYzIzZTkgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4cy1raGFkYXMtZWRnZTIuZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4cy1raGFkYXMtZWRnZTIuZHRzCj4+IEBAIC0xNjAsMzQgKzE2MCw0
MiBAQCB2ZGRfM3YzX3NkOiB2ZGQtM3YzLXNkLXJlZ3VsYXRvciB7Cj4+ICAgCj4+ICAgJmNwdV9i
MCB7Cj4+ICAgCWNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfYmlnMF9zMD47Cj4+ICsJbWVtLXN1cHBs
eSA9IDwmdmRkX2NwdV9iaWcwX21lbV9zMD47Cj4gYXMgZmFyIGFzIEkgcmVtZW1iZXIgdGhlcmUg
aGFzIG5vdCBiZWVuIGFueSBiaW5kaW5nIG1lcmdlZCB0aGF0IGRlY2xhcmVzCj4gdGhpcyBzdXBw
bHkuIFRoYW5rZnVsbHkgZm9sbG93aW5nIHRoZSBkb3VibGUgcGhhbmRsZSBiZWxvdywgdGhlIEVk
Z2UyIGlzCj4gZGVzaWduZWQgdG8gdXNlIHRoZSBzYW1lIHJlZ3VsYXRvciBmb3IgdGhlIG1lbS1z
dXBwbHksIHNvIHNwZWNpYWwgaGFuZGxpbmcKPiBpc24ndCBldmVuIG5lZWRlZC4KCkluZGVlZCwg
Y3VycmVudGx5IHRoZXJlIGlzbid0IGFueSB1c2VyIGluIHRoZSBtYWlubGluZSB0cmVlIChuZWl0
aGVyIApiaW5kaW5ncyBub3IgZHJpdmVycykgZm9yIHRoaXMgc2VwYXJhdGUgcmVndWxhdG9yLiBN
YWlubGluZSBjcHVmcmVxLWR0IApvbmx5IGV4cGVjdHMgYSBzaW5nbGUgcmVndWxhdG9yLCBhbmQg
YXMgSGVpa28gcG9pbnRlZCBvdXQgRWRnZTIgdXNlcyB0aGUgCnNhbWUgcGh5c2ljYWwgcmVndWxh
dG9yIHRvIHBvd2VyIGJvdGggdGhlIENQVSBjb3JlIGFuZCBpdHMgU1JBTSwgc28gCmFkZGluZyBh
IHNlcGFyYXRlIG1lbS1zdXBwbHkgaGVyZSBpc24ndCBoZWxwZnVsLgoKQmVzdCByZWdhcmRzLCBB
bGV4ZXkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
