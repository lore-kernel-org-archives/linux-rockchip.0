Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24A6FC77B7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 21:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+r80lv0SqAcRyQfznSX+gF/lnHs+nJ11CduI+uH0h4g=; b=uk6Y5cM6otBqfi
	9S/jMlSIbpNKqrrkT71VzS1R9AeFm+olkM5M27r2BtmVpnFmwABGusr9t+59U3vnJciCjouFIIvdv
	HzbEVPaTon4l8b6yoCsRUMTSd/Ep/A+58Zr1iFYOngbVq+SuY5AoDLztd5dhVyfst/xAyt6BKApCR
	KmY5DkVlbDsM/UcY026YwnH0VNRKmSpKdjEtB5CYQsHMKewx/D5nvorKuEInGRLfbefwx7WZWN0+M
	aBSK5GjaV1VlavNMbFOBmbNHRdf1yLdQjCSt/loUXH4pXhNQwJetmNlxpLWVpcxacqiAKBU8qfk54
	atumpME2AFZI+gNx1BZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSMSV-0000000EGft-48wd;
	Thu, 19 Jun 2025 21:06:07 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSIbr-0000000DeMG-2yqU
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 16:59:32 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-73a5c1d9d93so983260a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 09:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750352371; x=1750957171; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WU789LESDPx6spX9Gu45wOPXnZU17iFeIzBAgdevUwE=;
        b=LQXGmBwKHv2xUU0S21y5IZLO+oWLA52Y0Y5UgrbZev9h9oZl4+5Bo0qUh38Ymfh1mP
         R/TYUgunGzkDxTKL0//pncWW3OhV5AT+37gw5y5rUC3VJ+aHYcCSwa4E1KSpffTgZ49W
         3QAjY3CSC8BYue3OrN+7l4PMDXy/leIEoAyJ3WXKyjLS7cSgPMo8dhKgGWGuS2nuCHW2
         zu81Js73/kKNopn1XcQtICU8288HLEcQLQgtT3hefgTpP5Fp9dhVorOOvUb73w2FvoOj
         +wfi5dH6x266HZOCvRPLZGrMIlGaXoyGw/t17DX7SDex1/CDskv635+UeGpseHSVGpja
         PlqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750352371; x=1750957171;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WU789LESDPx6spX9Gu45wOPXnZU17iFeIzBAgdevUwE=;
        b=CQnYiIxT0Xsh/YSGJafg8yc3COeW44asmC7LcxgAbZTTRAS8oygJV5cQCxQtzvNfID
         Mk2eJMxPcpzUYPsrOcBCoKASi7GMwyT7ARiGbLU4XHH5asMFtNVERmctGhaZgXawVtq/
         ayf4mCZXJawS3QG3WnYbiZAQhsvHndv6QQr0CSZb0nOyCllPAfUtJ9DTf7EJYM3MWzKQ
         tCqNeQUZzJJKk5r4mAbMkpcte+APjRwYCQktYhsxQBLIy1dnYpJPN2rQ55ot8aPgonZO
         Xrx62pyXtysj81C33chdFxR9MZYT+5Ot3+S1suiDidWp4jimv1Zo0dvZetmJiWBCRLJc
         UrIw==
X-Forwarded-Encrypted: i=1; AJvYcCW6ydFhLH2O6pWGWoEhipFf/oHjmP2kvK7L6Zc3v8ZAtXsFYVrM5MRZh7yJ5txFMmrZxTWS7cTCRpIr608kWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwrXdC5rnJRPHfH9rmZXuPOBmph0aVO9d49Hl3Jv2QSOD6ckt3v
	yJDNf+fu64fObQQM2j0US8PW4QkDLXiiizLobl0VFLr9CweabzO+htq+7/GQmx1aO7I=
X-Gm-Gg: ASbGncu5Lmzws42BsILoENaYPDykk7g9StMaN5iKcwJnLBARC18EPJhcmyLEBijXEVj
	md2VOZNsWi1UPgisLg58GzrMvRTJ72z+Yyws/I2IjQcoAkv3/HKtjSUpUJHoL9YEoxkO3+Dg7Ry
	7xINZH69Qhx7RJyXmrZud/lGnd7Zgcop1C2chNGfQcfwpTR8P8vHnyWY/FN8ajGadY0LcfM7ugR
	i6xBRWVnY4RwSmqF4GtT9lRkcGFo2rV4j/TeSHKyavKlRutJxU6pWnL/uNm1SwuPcLvdJqRmew9
	l22fHrJFpLgQDvvcpd4Ph8ZaQrYknysCOsxY
X-Google-Smtp-Source: AGHT+IFIVSAeEPqWaR7ouc36Dp5BIP5quliMTNtM08oDDkQu9GEu/sRTek8upP25DBEtFCz1lvvpVw==
X-Received: by 2002:a05:6830:6c8a:b0:73a:8a8a:5151 with SMTP id 46e09a7af769-73a8a8a5334mr1331051a34.17.1750352370711;
        Thu, 19 Jun 2025 09:59:30 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a284ff5f4sm2339324a34.43.2025.06.19.09.59.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 09:59:30 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uSIbo-000000003GJ-3nRB;
	Thu, 19 Jun 2025 13:59:28 -0300
Date: Thu, 19 Jun 2025 13:59:28 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250619165928.GA10257@ziepe.ca>
References: <20250619131232.69208-1-benjamin.gaignard@collabora.com>
 <20250619131232.69208-4-benjamin.gaignard@collabora.com>
 <20250619134752.GB1643390@ziepe.ca>
 <073ffe14-d631-4a4f-8668-ddeb7d611448@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <073ffe14-d631-4a4f-8668-ddeb7d611448@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_095931_860611_8907AEC7 
X-CRM114-Status: GOOD (  36.66  )
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

T24gVGh1LCBKdW4gMTksIDIwMjUgYXQgMDY6Mjc6NTJQTSArMDIwMCwgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4gCj4gTGUgMTkvMDYvMjAyNSDDoCAxNTo0NywgSmFzb24gR3VudGhvcnBlIGEg
w6ljcml0wqA6Cgo+ID4gVWdoLiBUaGlzIGlnbm9yZXMgdGhlIGdmcCBmbGFncyB0aGF0IGFyZSBw
YXNzZWQgaW50byBtYXAgYmVjYXVzZSB5b3UKPiA+IGhhdmUgdG8gZm9yY2UgYXRvbWljIGR1ZSB0
byB0aGUgc3BpbmxvY2sgdGhhdCBzaG91bGRuJ3QgYmUgdGhlcmUgOigKPiA+IFRoaXMgbWVhbnMg
aXQgZG9lcyBub3Qgc2V0IEdGUF9LRVJORUxfQUNDT1VOVCB3aGVuIHJlcXVpcmVkLiBJdCB3b3Vs
ZAo+ID4gYmUgYmV0dGVyIHRvIGNvbnRpbnVlIHRvIHVzZSB0aGUgcGFzc2VkIGluIEdGUCBmbGFn
cyBidXQgb3ZlcnJpZGUgdGhlbQo+ID4gdG8gYXRvbWljIG1vZGUuCj4gCj4gSSB3aWxsIGFkZCBh
IGdmcF90IHBhcmFtZXRlciBhbmQgdXNlIGl0IGxpa2UgdGhhdDoKPiBwYWdlX3RhYmxlID0gaW9t
bXVfYWxsb2NfcGFnZXNfc3ooZ2ZwIHwgR0ZQX0FUT01JQyB8IEdGUF9ETUEzMiwgU1BBR0VfU0la
RSk7CgpUaGlzIHdpbGwgb3IgdG9nZXRoZXIgR0ZQX0FUT01JQyBhbmQgR0ZQX0tFUk5FTCwgSSBk
b24ndCB0aGluayB0aGF0CndvcmtzLi4KCj4gPiA+ICtzdGF0aWMgaW50IHZzaV9pb21tdV9hdHRh
Y2hfZGV2aWNlKHN0cnVjdCBpb21tdV9kb21haW4gKmRvbWFpbiwKPiA+ID4gKwkJCQkgICBzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gPiA+ICt7Cj4gPiA+ICsJc3RydWN0IHZzaV9pb21tdSAqaW9tbXUg
PSBkZXZfaW9tbXVfcHJpdl9nZXQoZGV2KTsKPiA+ID4gKwlzdHJ1Y3QgdnNpX2lvbW11X2RvbWFp
biAqdnNpX2RvbWFpbiA9IHRvX3ZzaV9kb21haW4oZG9tYWluKTsKPiA+ID4gKwl1bnNpZ25lZCBs
b25nIGZsYWdzOwo+ID4gPiArCWludCByZXQ7Cj4gPiA+ICsKPiA+ID4gKwlpZiAoV0FSTl9PTigh
aW9tbXUpKQo+ID4gPiArCQlyZXR1cm4gLUVOT0RFVjsKPiA+ID4gKwo+ID4gPiArCS8qIGlvbW11
IGFscmVhZHkgYXR0YWNoZWQgKi8KPiA+ID4gKwlpZiAoaW9tbXUtPmRvbWFpbiA9PSBkb21haW4p
Cj4gPiA+ICsJCXJldHVybiAwOwo+ID4gPiArCj4gPiA+ICsJcmV0ID0gdnNpX2lvbW11X2lkZW50
aXR5X2F0dGFjaCgmdnNpX2lkZW50aXR5X2RvbWFpbiwgZGV2KTsKPiA+ID4gKwlpZiAocmV0KQo+
ID4gPiArCQlyZXR1cm4gcmV0Owo+ID4gSHVybSwgdGhpcyBpcyBhY3R1YWxseSBxdWl0ZSBiYWQs
IG5vdyB0aGF0IGl0IGlzIGNsZWFyIHRoZSBIVyBpcyBpbiBhbgo+ID4gaWRlbnRpdHkgbW9kZSBp
dCBpcyBhY3R1YWxseSBhIHNlY3VyaXR5IHByb2JsZW0gZm9yIFZGSU8gdG8gc3dpdGNoIHRoZQo+
ID4gdHJhbnNsYXRpb24gdG8gaWRlbnRpdHkgZHVyaW5nIGF0dGFjaF9kZXZpY2UuIEknZCByZWFs
bHkgcHJlZmVyIG5ldwo+ID4gZHJpdmVycyBkb24ndCBtYWtlIHRoaXMgbWlzdGFrZS4KPiA+IAo+
ID4gSXQgc2VlbXMgdGhlIG1haW4gdGhpbmcgbW90aXZhdGluZyB0aGlzIGlzIHRoZSBmYWN0IGEg
bGlua2VkIGxpc3QgaGFzCj4gPiBvbmx5IGEgc2luZ2xlIGlvbW11LT5ub2RlIHNvIHlvdSBjYW4n
dCBhdHRhY2ggdGhlIGlvbW11IHRvIGJvdGggdGhlCj4gPiBuZXcvb2xkIGRvbWFpbiBhbmQgYXRv
bWljYWxseSB1cGRhdGUgdGhlIHBhZ2UgdGFibGUgYmFzZS4KPiA+IAo+ID4gSXMgaXQgcG9zc2li
bGUgZm9yIHRoZSBIVyB0byBkbyBhIGJsb2NraW5nIGJlaGF2aW9yPyBUaGF0IHdvdWxkIGJlIGFu
Cj4gPiBlYXN5IGZpeC4uIFlvdSBzaG91bGQgYWx3YXlzIGJlIGFibGUgdG8gZm9yY2UgdGhpcyBi
eSBhbGxvY2F0aW5nIGEKPiA+IHNoYXJlZCB0b3AgcGFnZSB0YWJsZSBsZXZlbCBkdXJpbmcgcHJv
YmUgdGltZSBhbmQgbWFraW5nIGl0IGVudGlyZWx5Cj4gPiBlbXB0eSB3aGlsZSBzdGF5aW5nIGFs
d2F5cyBpbiB0aGUgcGFnaW5nIG1vZGUuIE1heWJlIHRoZXJlIGlzIGEgbGVzcwo+ID4gZXhwZW5z
aXZlIHdheS4KPiA+IAo+ID4gT3RoZXJ3aXNlIHlvdSBwcm9iYWJseSBoYXZlIHdvcmsgbW9yZSBs
aWtlIHRoZSBvdGhlciBkcml2ZXJzIGFuZAo+ID4gYWxsb2NhdGUgYSBzdHJ1Y3QgZm9yIGVhY2gg
YXR0YWNobWVudCBzbyB5b3UgY2FuIGhhdmUgdGhlIGlvbW11Cj4gPiBhdHRhY2hlZCB0d28gZG9t
YWlucyBkdXJpbmcgdGhlIHN3aXRjaCBvdmVyIGFuZCBuZXZlciBkcm9wIHRvIGFuCj4gPiBpZGVu
dGl0eSBtb2RlLgo+IAo+IEkgd2lsbCByZW1vdmUgdGhlIHN3aXRjaCB0byBpZGVudGl0eSBkb21h
aW4gYW5kIGl0IHdpbGwgd29ya3MgZmluZS4KCllvdSdsbCBsb29zZSBpbnZhbGlkYXRpb25zLi4K
Ck1heWJlIHRoZSBlYXNpZXN0IHRoaW5nIGlzIHRvIHNxdWlzaCB2c2lfaW9tbXVfZW5hYmxlKCkg
YW5kIHJlb3JnYW5pemUKaXQgc28gdGhhdCB0aGUgc3BpbmxvY2sgaXMgaGVsZCBhY3Jvc3MgdGhl
IHJlZ2lzdGVyIHByb2dyYW1taW5nIGFuZAp0aGVuIHlvdSBjYW4gYXRvbWljYWxseSB1bmRlciB0
aGUgbG9jayBjaGFuZ2UgdGhlIHJlZ2lzdGVycyBhbmQgY2hhbmdlCnRoZSBsaW5rZWQgbGlzdC4g
VGhlIHJlZ2lzdGVyIHdyaXRlIGNhbm5vdCBmYWlsIHNvIHRoaXMgaXMgZmluZS4KClRoaXMgc2hv
dWxkIHByb2JhYmx5IGFsc28gZmx1c2ggdGhlIGlvdGxiIGluc2lkZSB0aGUgbG9jay4KCj4gPiBX
aGljaCB3aWxsIGNhdXNlIHRoZSBjb3JlIGNvZGUgdG8gYXV0b21hdGljYWxseSBydW4gdGhyb3Vn
aCB0bwo+ID4gdnNpX2lvbW11X2Rpc2FibGUoKSBwcmlvciB0byBjYWxsaW5nIHZzaV9pb21tdV9y
ZWxlYXNlX2RldmljZSgpLCB3aGljaAo+ID4gd2lsbCBhdm9pZCBVQUYgcHJvYmxlbXMuCj4gPiAK
PiA+IEFsc28sIHNob3VsZCB0aGUgcHJvYmUgZnVuY3Rpb25zIGJlIGRvaW5nIHNvbWUga2luZCBv
ZiB2YWxpZGF0aW9uIHRoYXQKPiA+IHRoZXJlIGlzIG9ubHkgb25lIHN0cnVjdCBkZXZpY2UgYXR0
YWNoZWQ/Cj4gCj4gd2hpY2gga2luZCBvZiB2YWxpZGF0aW9uID8KClRoYXQgb25seSBvbmUgZGV2
aWNlIHByb2JlZCB0byB0aGUgaW9tbXU/CgpKYXNvbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
