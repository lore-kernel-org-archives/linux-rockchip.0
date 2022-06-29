Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA7E3C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jun 2022 17:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eh6CLK5coQmrsQtlpumtk2qrHG6oS4+3MeoWafZoFLo=; b=eLa19LCCIR2bXf
	i/hJNJMqeZmLq2pPpXga7IIsxmRud++avz5j7UjPv3/DM9MmzIB6pVOJd+nrkYYVU9mxDiCaOmOn7
	F+qLfdzMmDEIMPlRTkfq7VRcbgpq2jUY8YjRy2KV/1Xq/wICNK2vxcr2kq4hgACh3L6SG6AHSlu7Z
	F79jDmTjGdUuteQ9/IZ0DVthSoFcAPUKhhUB5XnHCqqZm7E7reC/A7cO1LunP+gnmrGJ73y44bLwo
	9xDsgs69dLpuAkTHJ1CvtVGM1/id/UyI6qAIJEwgioFxsBSRDdEqTzunuLyJy3/RSjFghH+kDJz0Y
	wwt+Ll/GPw5TUEs+ET3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6b4H-00D7MJ-Oa; Wed, 29 Jun 2022 17:01:33 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6b49-00D7J4-0J
	for linux-rockchip@lists.infradead.org; Wed, 29 Jun 2022 17:01:29 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-101cdfddfacso22231061fac.7
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jun 2022 10:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ef+4apwtIbdICqme2rXmW1mvBhsERAVWQJprylUXtXY=;
        b=G42CbUs4Vmmb5Q0Gf4h3i/fhOzvaIMiB+WCejp/2bnJofeKf1EfIqxUApo/q2dgKeR
         FMZj76Va5WB5JQFQ46dBJAytWdFbzf3cKrStbdLyi6oOCeLD8LWmvST9yfxYJvoYy4u4
         SJNqKHr680iZHcDDoDpmsMUrT4HIuDGigN6phqAcN69BYWAE7WCIvQ6E3qRyYGolHNDI
         p1v/MtUSyGwHMonO4Bly0xu7aeI8ZQTrm7a6UW9dtUSIK0QMbncHNx9iHXQMqtVvbKg4
         3kK1Ze4ArGkUJ75NIufIag4ruRCAKvgP0g+i4VBgPRIzNP0jDjtW0zJqr6XSyDVdqA/L
         ZBXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ef+4apwtIbdICqme2rXmW1mvBhsERAVWQJprylUXtXY=;
        b=AJgAi601KQDvfc9rqDtNKzo/+6iN+tWq8Fjorm69PunLW/jgH0GiCwghshiql+E2Gf
         q7vksc9c6UTiCINuQ9VaFsxHugSVFKzf1EKA+z3EQZP9g7rHVQtpWqcd4GbL/pXe4HMx
         S3D4Lagzo+1GeyqH+1hohA9oduQkHzVuBSwSdl72RdlPu6Ov1UAwvRgt0GLHa5a8Zpd4
         /0o4jusw9XZS3THP+9Uldr2KdeJfZ7H+072C2ycgS9QE+pUHcfd5ZG6cmEzy2ZldM876
         KDPDVcOO0Lzrl/MJnEZAdV55t1nlnIKuN3V5yvmA70kJ/21eQkDVTHoHioI5An+GKqNJ
         wQXg==
X-Gm-Message-State: AJIora+X3C0ullN+Nbv12KKZI+Wl4DBCdepjFpAv9007uBA2nYdzvHP1
	6okVOVyIsKXf/OBnE5DmwFBc+8hFTzaLZm6N
X-Google-Smtp-Source: AGRyM1uBXuRoIHaCMNvjM0X3TXsEmHfLKz9mV46S0kVY8b8/1/jTKZ6c1VetCC5svwotT9hmzFHoKA==
X-Received: by 2002:a05:6870:45a1:b0:10b:8ee3:b3bd with SMTP id y33-20020a05687045a100b0010b8ee3b3bdmr1351076oao.9.1656522082649;
        Wed, 29 Jun 2022 10:01:22 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id go13-20020a056870da0d00b00101f143d537sm11419179oab.26.2022.06.29.10.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 10:01:21 -0700 (PDT)
Date: Wed, 29 Jun 2022 14:01:16 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
	p.zabel@pengutronix.de, mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl, benjamin.gaignard@collabora.com,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/7] media: hantro: postproc: Fix buffer size
 calculation
Message-ID: <YryFXLQvxEizaVah@eze-laptop>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
 <20220616202513.351039-4-jernej.skrabec@gmail.com>
 <YrskKxCDwSulaGJ5@eze-laptop>
 <3180111.44csPzL39Z@jernej-laptop>
 <5af02115c95f96116b161464d3be8a210dad9d97.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5af02115c95f96116b161464d3be8a210dad9d97.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_100125_142313_616EC46D 
X-CRM114-Status: GOOD (  50.25  )
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

SGkgTmljb2xhcywgSmVybmVqLAoKT24gVHVlLCBKdW4gMjgsIDIwMjIgYXQgMDQ6MDY6MTNQTSAt
MDQwMCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBMZSBtYXJkaSAyOCBqdWluIDIwMjIgw6Ag
MTg6MTMgKzAyMDAsIEplcm5laiDFoGtyYWJlYyBhIMOpY3JpdMKgOgo+ID4gRG5lIHRvcmVrLCAy
OC4ganVuaWogMjAyMiBvYiAxNzo1NDoxOSBDRVNUIGplIEV6ZXF1aWVsIEdhcmNpYSBuYXBpc2Fs
KGEpOgo+ID4gPiBIaSBKZXJuZWosCj4gPiA+IAo+ID4gPiBPbiBUaHUsIEp1biAxNiwgMjAyMiBh
dCAxMDoyNTowOVBNICswMjAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+ID4gPiBXaGVuIGFs
bG9jYXRpbmcgYXV4IGJ1ZmZlcnMgZm9yIHBvc3Rwcm9jZXNzaW5nLCBpdCdzIGFzc3VtZWQgdGhh
dCBiYXNlCj4gPiA+ID4gYnVmZmVyIHNpemUgaXMgdGhlIHNhbWUgYXMgdGhhdCBvZiBvdXRwdXQu
IENvaW5jaWRlbnRhbGx5LCB0aGF0J3MgdHJ1ZQo+ID4gPiA+IG1vc3Qgb2YgdGhlIHRpbWUsIGJ1
dCBub3QgYWx3YXlzLiAxMC1iaXQgc291cmNlIGFsc28gbmVlZHMgYXV4IGJ1ZmZlcgo+ID4gPiA+
IHNpemUgd2hpY2ggaXMgYXBwcm9wcmlhdGUgZm9yIDEwLWJpdCBuYXRpdmUgZm9ybWF0LCBldmVu
IGlmIHRoZSBvdXRwdXQKPiA+ID4gPiBmb3JtYXQgaXMgOC1iaXQuIFNpbWlsYXJseSwgbXYgc2l6
ZXMgYW5kIG90aGVyIGV4dHJhIGJ1ZmZlciBzaXplIGFsc28KPiA+ID4gPiBkZXBlbmRzIG9uIHNv
dXJjZSB3aWR0aC9oZWlnaHQsIG5vdCBkZXN0aW5hdGlvbi4KPiA+ID4gPiAKPiA+ID4gPiBSZXZp
ZXdlZC1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEB2YW5ndWFyZGlhc3VyLmNvbS5hcj4K
PiA+ID4gCj4gPiA+IEkgdG9vayBhIG5ldyBsb29rIGF0IHRoaXMgcGF0Y2guCj4gPiA+IAo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5j
b20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gCj4gPiA+ID4gIC4uLi9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm9fcG9zdHByb2MuYyAgICB8IDI0ICsrKysrKysrKysrKystLS0tLS0KPiA+ID4gPiAg
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jICAgIHwgIDIgKy0KPiA+
ID4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5oICAgIHwgIDIg
KysKPiA+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19wb3N0cHJvYy5jCj4gPiA+ID4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19wb3N0cHJvYy5jIGluZGV4Cj4gPiA+ID4gYWIxNjhjMWMwZDI4Li5iNzdj
YzU1ZTQzZWEgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm9fcG9zdHByb2MuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9o
YW50cm8vaGFudHJvX3Bvc3Rwcm9jLmMKPiA+ID4gPiBAQCAtMTIsNiArMTIsNyBAQAo+ID4gPiA+
IAo+ID4gPiA+ICAjaW5jbHVkZSAiaGFudHJvX2h3LmgiCj4gPiA+ID4gICNpbmNsdWRlICJoYW50
cm9fZzFfcmVncy5oIgo+ID4gPiA+ICAjaW5jbHVkZSAiaGFudHJvX2cyX3JlZ3MuaCIKPiA+ID4g
PiAKPiA+ID4gPiArI2luY2x1ZGUgImhhbnRyb192NGwyLmgiCj4gPiA+ID4gCj4gPiA+ID4gICNk
ZWZpbmUgSEFOVFJPX1BQX1JFR19XUklURSh2cHUsIHJlZ19uYW1lLCB2YWwpIFwKPiA+ID4gPiAg
eyBcCj4gPiA+ID4gCj4gPiA+ID4gQEAgLTE3NCwxOCArMTc1LDI3IEBAIGludCBoYW50cm9fcG9z
dHByb2NfYWxsb2Moc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiA+ID4gPiAKPiA+ID4gPiAgCXN0
cnVjdCB2NGwyX20ybV9jdHggKm0ybV9jdHggPSBjdHgtPmZoLm0ybV9jdHg7Cj4gPiA+ID4gIAlz
dHJ1Y3QgdmIyX3F1ZXVlICpjYXBfcXVldWUgPSAmbTJtX2N0eC0+Y2FwX3FfY3R4LnE7Cj4gPiA+
ID4gIAl1bnNpZ25lZCBpbnQgbnVtX2J1ZmZlcnMgPSBjYXBfcXVldWUtPm51bV9idWZmZXJzOwo+
ID4gPiA+IAo+ID4gPiA+ICsJc3RydWN0IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgcGl4X21wOwo+
ID4gPiA+ICsJY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgKmZtdDsKPiA+ID4gPiAKPiA+ID4gPiAg
CXVuc2lnbmVkIGludCBpLCBidWZfc2l6ZTsKPiA+ID4gPiAKPiA+ID4gPiAtCWJ1Zl9zaXplID0g
Y3R4LT5kc3RfZm10LnBsYW5lX2ZtdFswXS5zaXplaW1hZ2U7Cj4gPiA+ID4gKwkvKiB0aGlzIHNo
b3VsZCBhbHdheXMgcGljayBuYXRpdmUgZm9ybWF0ICovCj4gPiA+ID4gKwlmbXQgPSBoYW50cm9f
Z2V0X2RlZmF1bHRfZm10KGN0eCwgZmFsc2UpOwo+ID4gPiAKPiA+ID4gQ2xlYXJseSB0aGlzIGlz
IGNvcnJlY3QuCj4gPiA+IAo+ID4gPiBXaGVuIHRoZSBkcml2ZXIgZW5hYmxlcyB0aGUgcG9zdC1w
cm9jZXNzb3IgaXQgZGVjb2RlcyBhIGNvZGVkIGZvcm1hdCAoSDI2NCwKPiA+ID4gZXRjLikgdG8g
YSBuYXRpdmUgZm9ybWF0IChOVjEyXzRMNCBvciBQMDEwXzRMNCkgYW5kIGZlZWRzIHRoaXMgaW50
byB0aGUKPiA+ID4gcG9zdHByb2Nlc3NvciBlbmdpbmUgdG8gcHJvZHVjZSBzb21lIG90aGVyIGZv
cm1hdCAoWVVZViwgTlYxMiwgZXRjLikuCj4gPiA+IAo+ID4gPiBUaGUgYnVmZmVycyBhbGxvY2F0
ZWQgaGVyZSBzaG91bGQgYmUgdGFrZW4gZnJvbSB0aGUgbmF0aXZlIGZvcm1hdCwKPiA+ID4gc28g
aXQncyBjb3JyZWN0IHRvIHVzZSBoYW50cm9fZ2V0X2RlZmF1bHRfZm10KCkuCj4gPiA+IAo+ID4g
PiA+ICsJaWYgKCFmbXQpCj4gPiA+ID4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gKwl2NGwy
X2ZpbGxfcGl4Zm10X21wKCZwaXhfbXAsIGZtdC0+Zm91cmNjLCBjdHgtPnNyY19mbXQud2lkdGgs
Cj4gPiA+ID4gKwkJCSAgICBjdHgtPnNyY19mbXQuaGVpZ2h0KTsKPiA+ID4gCj4gPiA+IFRoZSBp
c3N1ZSBjb21lcyBhdCB0aGlzIHBvaW50LCB3aGVyZSB3ZSBuZWdvdGlhdGUgdGhlIGJ1ZmZlciBz
aXplIGJhc2VkIG9uCj4gPiA+IHRoZSBzb3VyY2Ugc2l6ZSAoT1VUUFVUIHF1ZXVlIHNpemUpLCBp
bnN0ZWFkIG9mIG5lZ290aWF0aW5nIGJhc2VkCj4gPiA+IG9uIHRoZSBOYXRpdmUgc2l6ZS4KPiA+
ID4gCj4gPiA+ICAgQ29kZWQgLT4gWyBEZWNvZGVyIF0gLT4gTmF0aXZlIC0+IFsgUG9zdC1wcm9j
ZXNzb3IgXSAtPiBEZWNvZGVkCj4gPiAKPiA+IEknbSBub3Qgc3VyZSB3aGF0IGlzIHRoZSBkaWZm
ZXJlbmNlIGJldHdlZW4gc291cmNlIGFuZCBuYXRpdmUgc2l6ZT8gWW91IG1lYW4gCj4gPiBvbmUg
Y29kZWQgaW4gY29udHJvbHMgYW5kIG9uZSBzZXQgdmlhIG91dHB1dCBmb3JtYXQ/IElNTyB0aGV5
IHNob3VsZCBhbHdheXMgYmUgCj4gPiB0aGUgc2FtZSwgb3RoZXJ3aXNlIGl0IGNhbiBiZSBjb25z
aWRlcmVkIGEgYnVnIGluIHVzZXJzcGFjZSBhcHBsaWNhdGlvbi4KPiAKPiBJbmRlZWQgdGhlIHNy
Y19mbXQgc2hvdWxkIHVzZSBjb2RlZCB3aWR0aC9oZWlnaHQgKGFzIHBlciBzcGVjKS4gVGhlIGRy
aXZlciB3aWxsCj4gdGhlbiBhZGFwdCB0byBpdHMgb3duIHJlcXVpcmVtZW50IHJlc3VsdGluZyBp
bnRvIHRoZSAibmF0aXZlIiB3aWR0aCBoZWlnaHQgYmVpbmcKPiByZXR1cm5lZC4gTm90aWNlIHRo
YXQgc19jdHJsKCkgc2hvdWxkIGZhaWwgaW4gY2FzZSBvZiBtaXNzLW1hdGNoICh0aGlzIGlzIENP
REVDCj4gc3BlY2lmaWMpLCBvciBzdHJlYW1vbigpIHNob3VsZCBmYWlsIGlmIHRoZSBjb2RlYyBz
cGVjaWZpYyBjb250cm9sIGhhdmUgbmV2ZXIKPiBiZWVuIHNldCAoYXMgd2UgYWx3YXlzIGluaXRp
YWxpc2UgdGhpcywgaXQgd2lsbCBmYWlsIGR1ZSB0byBkZWZhdWx0IGJlaW5nIGFuCj4gaW52YWxp
ZCB2YWx1ZSBhbnl3YXkpLgo+IAo+IEFzIGEgc2lkZSBlZmZlY3QsIHdoZW4gdXNlcmxhbmQgcmVh
ZCB0aGUgZGVmYXVsdCBmb3JtYXQgKEdfRk1UKENBUFRVUkUpLCB0aGUKPiB3aWR0aC9oZWlnaHQg
c2hvdWxkIG1hdGNoIHRoZSBzcmNfZHN0IGZvciB0aGlzIGRyaXZlci4gVGhpcyBpcyB0aGUgbmF0
aXZlIHNpemUuCj4gVGhlIG9wdGlvbmFsIHBhdGggdGhhdCB0aGlzIGRyaXZlciBlbmFibGVzIGlz
IGVudW1lcmF0aW9uIG9mIENBUFRVUkUgZm9ybWF0IGFuZAo+IGZyYW1lIHNpemVzLCBjb21iaW5l
ZCB3aXRoIHRvIHNlbGVjdCBmcm9tIHRoZXNlLiBUaGUgZHJpdmVyIHdpbGwgY3JlYXRlIGEKPiBz
ZWNvbmRhcnkgc2V0IG9mIGJ1ZmZlcnMgaW4gdGhlIGNhc2UuCj4gCgpPSywgdGhlIHBhdGNoIGxv
b2tzIGdvb2QgdGhlbi4KClRoYW5rcywKRXplcXVpZWwKCj4gTmljb2xhcwo+IAo+ID4gCj4gPiBC
ZXN0IHJlZ2FyZHMsCj4gPiBKZXJuZWoKPiA+IAo+ID4gPiAKPiA+ID4gU28sIHdoaWxlIHRoZSBw
YXRjaCBpcyBzdXJlbHkgaW1wcm92aW5nIHRoaW5ncywgSSB3b25kZXIgaWYgaXQgd29uJ3QKPiA+
ID4gY2F1c2Ugb3RoZXIgaXNzdWVzLgo+ID4gPiAKPiA+ID4gVGhpcyByZW1pbmRzIG1lIHdlIGFy
ZSBzdGlsbCBsYWNraW5nIGEgbW9yZSBjb21wbGV0ZSB0ZXN0LXN1aXRlIGZvciB0aGlzCj4gPiA+
IGRyaXZlciwgc28gdGhhdCB3ZSBjYW4gdmFsaWRhdGUgY2hhbmdlcyBhbmQgZW5zdXJlIHRoZXJl
IGFyZSBubwo+ID4gPiByZWdyZXNzaW9ucy4KPiA+ID4gCj4gPiA+IFBlcmhhcHMgd2UgY291bGQg
aGFjayBGbHVzdGVyIHRvIG5vdCBvbmx5IHRlc3QgdGhlIGNvbmZvcm1hbmNlLAo+ID4gPiBidXQg
YWxzbyB0ZXN0IHRoZSBwb3N0LXByb2Nlc3Nvcj8KPiA+ID4gCj4gPiA+IFRoYW5rcywKPiA+ID4g
RXplcXVpZWwKPiA+ID4gCj4gPiA+ID4gKwo+ID4gPiA+ICsJYnVmX3NpemUgPSBwaXhfbXAucGxh
bmVfZm10WzBdLnNpemVpbWFnZTsKPiA+ID4gPiAKPiA+ID4gPiAgCWlmIChjdHgtPnZwdV9zcmNf
Zm10LT5mb3VyY2MgPT0gVjRMMl9QSVhfRk1UX0gyNjRfU0xJQ0UpCj4gPiA+ID4gCj4gPiA+ID4g
LQkJYnVmX3NpemUgKz0gaGFudHJvX2gyNjRfbXZfc2l6ZShjdHgtPmRzdF9mbXQud2lkdGgsCj4g
PiA+ID4gLQkJCQkJCWN0eC0KPiA+ID4gZHN0X2ZtdC5oZWlnaHQpOwo+ID4gPiA+ICsJCWJ1Zl9z
aXplICs9IGhhbnRyb19oMjY0X212X3NpemUocGl4X21wLndpZHRoLAo+ID4gPiA+ICsJCQkJCQkK
PiA+IHBpeF9tcC5oZWlnaHQpOwo+ID4gPiA+IAo+ID4gPiA+ICAJZWxzZSBpZiAoY3R4LT52cHVf
c3JjX2ZtdC0+Zm91cmNjID09IFY0TDJfUElYX0ZNVF9WUDlfRlJBTUUpCj4gPiA+ID4gCj4gPiA+
ID4gLQkJYnVmX3NpemUgKz0gaGFudHJvX3ZwOV9tdl9zaXplKGN0eC0+ZHN0X2ZtdC53aWR0aCwK
PiA+ID4gPiAtCQkJCQkgICAgICAgY3R4LQo+ID4gPiBkc3RfZm10LmhlaWdodCk7Cj4gPiA+ID4g
KwkJYnVmX3NpemUgKz0gaGFudHJvX3ZwOV9tdl9zaXplKHBpeF9tcC53aWR0aCwKPiA+ID4gPiAr
CQkJCQkgICAgICAgcGl4X21wLmhlaWdodCk7Cj4gPiA+ID4gCj4gPiA+ID4gIAllbHNlIGlmIChj
dHgtPnZwdV9zcmNfZm10LT5mb3VyY2MgPT0gVjRMMl9QSVhfRk1UX0hFVkNfU0xJQ0UpCj4gPiA+
ID4gCj4gPiA+ID4gLQkJYnVmX3NpemUgKz0gaGFudHJvX2hldmNfbXZfc2l6ZShjdHgtPmRzdF9m
bXQud2lkdGgsCj4gPiA+ID4gLQkJCQkJCWN0eC0KPiA+ID4gZHN0X2ZtdC5oZWlnaHQpOwo+ID4g
PiA+ICsJCWJ1Zl9zaXplICs9IGhhbnRyb19oZXZjX212X3NpemUocGl4X21wLndpZHRoLAo+ID4g
PiA+ICsJCQkJCQkKPiA+IHBpeF9tcC5oZWlnaHQpOwo+ID4gPiA+IAo+ID4gPiA+ICAJZm9yIChp
ID0gMDsgaSA8IG51bV9idWZmZXJzOyArK2kpIHsKPiA+ID4gPiAgCQo+ID4gPiA+ICAJCXN0cnVj
dCBoYW50cm9fYXV4X2J1ZiAqcHJpdiA9ICZjdHgtPnBvc3Rwcm9jLmRlY19xW2ldOwo+ID4gPiA+
IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRy
b192NGwyLmMKPiA+ID4gPiBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Y0
bDIuYyBpbmRleAo+ID4gPiA+IDMzNGYxOGE0MTIwZC4uMmM3YTgwNTI4OWU3IDEwMDY0NAo+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Y0bDIuYwo+ID4g
PiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Y0bDIuYwo+ID4g
PiA+IEBAIC0xMTgsNyArMTE4LDcgQEAgaGFudHJvX2ZpbmRfZm9ybWF0KGNvbnN0IHN0cnVjdCBo
YW50cm9fY3R4ICpjdHgsIHUzMgo+ID4gPiA+IGZvdXJjYyk+IAo+ID4gPiA+ICAJcmV0dXJuIE5V
TEw7Cj4gPiA+ID4gIAo+ID4gPiA+ICB9Cj4gPiA+ID4gCj4gPiA+ID4gLXN0YXRpYyBjb25zdCBz
dHJ1Y3QgaGFudHJvX2ZtdCAqCj4gPiA+ID4gK2NvbnN0IHN0cnVjdCBoYW50cm9fZm10ICoKPiA+
ID4gPiAKPiA+ID4gPiAgaGFudHJvX2dldF9kZWZhdWx0X2ZtdChjb25zdCBzdHJ1Y3QgaGFudHJv
X2N0eCAqY3R4LCBib29sIGJpdHN0cmVhbSkKPiA+ID4gPiAgewo+ID4gPiA+ICAKPiA+ID4gPiAg
CWNvbnN0IHN0cnVjdCBoYW50cm9fZm10ICpmb3JtYXRzOwo+ID4gPiA+IAo+ID4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmgKPiA+ID4g
PiBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Y0bDIuaCBpbmRleAo+ID4g
PiA+IGIxN2U4NGM4MjU4Mi4uNjRmNmY1N2U5ZDdhIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Y0bDIuaAo+ID4gPiA+ICsrKyBiL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Y0bDIuaAo+ID4gPiA+IEBAIC0yMyw1ICsy
Myw3IEBAIGV4dGVybiBjb25zdCBzdHJ1Y3QgdmIyX29wcyBoYW50cm9fcXVldWVfb3BzOwo+ID4g
PiA+IAo+ID4gPiA+ICB2b2lkIGhhbnRyb19yZXNldF9mbXRzKHN0cnVjdCBoYW50cm9fY3R4ICpj
dHgpOwo+ID4gPiA+ICBpbnQgaGFudHJvX2dldF9mb3JtYXRfZGVwdGgodTMyIGZvdXJjYyk7Cj4g
PiA+ID4gCj4gPiA+ID4gK2NvbnN0IHN0cnVjdCBoYW50cm9fZm10ICoKPiA+ID4gPiAraGFudHJv
X2dldF9kZWZhdWx0X2ZtdChjb25zdCBzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LCBib29sIGJpdHN0
cmVhbSk7Cj4gPiA+ID4gCj4gPiA+ID4gICNlbmRpZiAvKiBIQU5UUk9fVjRMMl9IXyAqLwo+ID4g
Cj4gPiAKPiA+IAo+ID4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
