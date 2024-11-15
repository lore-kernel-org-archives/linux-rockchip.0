Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE5E4D6DDD5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Nov 2024 05:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mL9kQehYtWiIBpXftugJlkUNt5IAIQ+t6bclDa5PDG4=; b=HTz3WJRG2NANUM
	LaV6T9MQ4mlNLHd4nuQFm83CxMkCmLM7Q70THrCrgWVO6pZqe8mxDPcZ9lhwXxWA71yql5A4rsMh4
	tG9xmhBnEr5Cy3Tkxsrk1aIquoSd41a5Z9vceNQPa2cNZ6xnCv0Chn5VEzyTzouRfvPIYTV4L6yHB
	U3zslij43iBz+49dM/R3mJTbZGl/Mke993qAEkMO0dKukkJKRhVCKGnCHNrn4XC2lKbXHzauUpA43
	WppCDZkHT6I/kF9BazJSx57T+InP9p1SVvmoYj6Ckxf9ADcNtkbDreWdyPZTyONWp94Nx7Woayf7c
	ihygZp1spWThLUdwTF2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBpIF-00000001icA-0IHH;
	Fri, 15 Nov 2024 05:54:55 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBpHH-00000001iOm-3swm
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Nov 2024 05:53:57 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-71e79f73aaeso1107052b3a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Nov 2024 21:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731650035; x=1732254835; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1PjeRA2xF0UfYKxZqoGwYKdedIBD+c8tm1voRBlQUUw=;
        b=keOZCcQtw7KeT/4TyxRxJ59fDFK90Z7pCcXcr7RRukQd3odLSaClz6iL44baJFoB+1
         ZRwDeAfzwbyv9plo1N+dhoT2IMY5zyXcgJGLLN1rDvHVeYYuI0TYRn6kJ1gaEDHAUrtS
         QuZGSUm5TphC7FU4Yc40JeEz2C0BB3bICGzMpDgTtzAzwLw1uUXeF3n6wnkYG7Vgp8ne
         Im8ve8Er3eeX2SlWBdoe6Odk/VaY/rh25CrHvgdIWg7MmmjDMADP0okhjFs8etv1UEPz
         8x1Y1KSafd5TvPpqHwSxosh8JjGuZfKe+FQL7rmrFoIlU3Mx5CeOunIL3mmU/tUrkuGc
         BlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731650035; x=1732254835;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1PjeRA2xF0UfYKxZqoGwYKdedIBD+c8tm1voRBlQUUw=;
        b=W8TB//QuUg+EkAcaVOLJD6KjuNT89ZtrdfcMuSzr9MyW51u6pgP1wb3HIN21bVq0UM
         k+N0QRHr0YBgGOfUTJ76TcEPHjk2rwnp+1MbF13pHweEvEEdxFVXjoDxXc3OQYY3NDVr
         OhQssi3GrQVoyqtk6zBOV81tipVAUijNHehvQb18+4H+NU5YYBxJmrhh4SRIhpWqvPpu
         79wk1YMe6Yb0Lpr2+xa8PcXWsdUQVY7Y8peXQKknNeR0FqOv/wTdK7d7nArqeRiLUbiw
         E6QldVWa5+hkhUBUmxc3VC3lDGoR8m6Y7LQ3MBRGH4+i0jQk65ibH7sHnYMQZKHc4zlK
         mJpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyI2Ns/arSCN+Myvo79kgkzpMlzDO2LHTKi/487N12PDdKrNxu4cKgvxopqY5a6H5IB6vz0aS4SkjeSXtxyw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/WFlzMJYR7pAnHTCcfpS+Y2AeumUTmmtEudMpmPcmzr/ONyH/
	NA1XS0PzQ3naz4+mLxF0KdgbxtKsmyIuLCaYjY7EqvAId2nHHCgCChQQWOih2g==
X-Google-Smtp-Source: AGHT+IHmV0f5ACpxzanuVu8/s8lS/U9F+wX+vXwYW4uBhXPOpRx3lgl4u0soVqVsy9/dqVOSZpIM6g==
X-Received: by 2002:a05:6a00:a08:b0:71e:6489:d18 with SMTP id d2e1a72fcca58-72476d5a95fmr2213233b3a.22.1731650034748;
        Thu, 14 Nov 2024 21:53:54 -0800 (PST)
Received: from thinkpad ([117.193.208.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72477120a13sm617854b3a.60.2024.11.14.21.53.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 21:53:54 -0800 (PST)
Date: Fri, 15 Nov 2024 11:23:46 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v10 2/3] PCI: rockchip: Simplify reset control handling
 by using reset_control_bulk*() function
Message-ID: <20241115055346.m2rhcb7z5hoydxsb@thinkpad>
References: <20241019060141.2489-1-linux.amoon@gmail.com>
 <20241019060141.2489-3-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241019060141.2489-3-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_215355_980162_7ED936E2 
X-CRM114-Status: GOOD (  25.80  )
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

T24gU2F0LCBPY3QgMTksIDIwMjQgYXQgMTE6MzE6MzRBTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBDdXJyZW50bHksIHRoZSBkcml2ZXIgYWNxdWlyZXMgYW5kIGFzc2VydHMvZGVhc3NlcnRz
IHRoZSByZXNldHMKPiBpbmRpdmlkdWFsbHkgdGhlcmVieSBtYWtpbmcgdGhlIGRyaXZlciBjb21w
bGV4IHRvIHJlYWQuIEJ1dCB0aGlzCj4gY2FuIGJlIHNpbXBsaWZpZWQgYnkgdXNpbmcgdGhlIHJl
c2V0X2NvbnRyb2xfYnVsayBBUElzLgo+IFVzZSBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVsa19nZXRf
ZXhjbHVzaXZlKCkgQVBJIHRvIGFjcXVpcmUgYWxsCj4gdGhlIHJlc2V0cyBhbmQgdXNlIHJlc2V0
X2NvbnRyb2xfYnVsa197YXNzZXJ0L2RlYXNzZXJ0fSgpIEFQSXMgdG8KPiBhc3NlcnQvZGVhc3Nl
cnQgdGhlbSBpbiBidWxrLgo+IAo+IEZvbGxvd2luZyB0aGUgcmVjb21tZW5kYXRpb25zIGluICdS
b2NrY2hpcCBSSzMzOTkgVFJNIHYxLjMgUGFydDInOgo+IAo+IDEuIFNwbGl0IHRoZSByZXNldCBj
b250cm9scyBpbnRvIHR3byBncm91cHMgYXMgcGVyIHNlY3Rpb24gJzE3LjUuOC4xLjEgUENJZQo+
IGFzIFJvb3QgQ29tcGxleCcuCj4gCj4gMi4gRGVhc3NlcnQgdGhlICdQaXBlLCBNR01UIFN0aWNr
eSwgTUdNVCwgQ29yZScgcmVzZXRzIGluIGdyb3VwcyBhcyBwZXIKPiBzZWN0aW9uICcxNy41Ljgu
MS4xIFBDSWUgYXMgUm9vdCBDb21wbGV4Jy4gVGhpcyBpcyBhY2NvbXBsaXNoZWQgdXNpbmcgdGhl
Cj4gcmVzZXRfY29udHJvbF9idWxrIEFQSXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9v
biA8bGludXguYW1vb25AZ21haWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFz
aXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgpPbmUgbml0cGljayBiZWxv
dy4gQnV0IGRvbid0IG5lZWQgdG8gcmVzcGluIGFzIGl0IGNhbiBiZSBmaXhlZCB3aGlsZSBhcHBs
eWluZy4KCj4gLS0tCj4gdjEwOiBGaXggc29tZSB0eXBvCj4gdjk6IEltcHJvdmVkIHRoZSBjb21t
aXQgbWVzc2FnZSBhbmQgdHJ5IHRvIGZpeCBmZXcgcmV2aWV3IGNvbW1lbnRzLgo+IHY4OiBJIHRy
aWVkIHRvIGFkZHJlc3MgcmV2aWV3cyBhbmQgY29tbWVudHMgZnJvbSBNYW5pLgo+ICAgICBGb2xs
b3cgdGhlIHNlcXVlbmNlIG9mIERlLWFzc2VydCBhcyBwZXIgdGhlIGRyaXZlciBjb2RlLgo+ICAg
ICBEcm9wIHRoZSBjb21tZW50IGluIHRoZSBkcml2ZXIuCj4gICAgIEltcHJvdmUgdGhlIGNvbW1p
dCBtZXNzYWdlIHdpdGggdGhlIGRlc2NyaXB0aW9uIG9mIHRoZSBUTVAgc2VjdGlvbi4KPiAgICAg
SW1wcm92ZSB0aGUgcmVhc29uIGZvciB0aGUgY29yZSBmdW5jdGlvbmFsIGNoYW5nZXMgaW4gdGhl
IGNvbW1pdAo+ICAgICBkZXNjcmlwdGlvbi4KPiAgICAgSW1wcm92ZSB0aGUgZXJyb3IgaGFuZGxp
bmcgbWVzc2FnZXMgb2YgdGhlIGNvZGUuCj4gdjc6IHJlcGxhY2UgZGV2bV9yZXNldF9jb250cm9s
X2J1bGtfZ2V0X29wdGlvbmFsX2V4Y2x1c2l2ZSgpCj4gICAgICAgICB3aXRoIGRldm1fcmVzZXRf
Y29udHJvbF9idWxrX2dldF9leGNsdXNpdmUoKQo+ICAgICB1cGRhdGUgdGhlIGZ1bmN0aW9uYWwg
Y2hhbmdlcy4KPiBWNjogQWRkIHJlYXNvbiBmb3IgdGhlIHNwbGl0IG9mIHRoZSBSRVNFVCBwaW5z
Lgo+IHY1OiBGaXggdGhlIERlLWFzc2VydCByZXNldCBjb3JlIGFzIHBlciB0aGUgVFJNCj4gICAg
IERlLWFzc2VydCB0aGUgUElQRV9SRVNFVF9OL01HTVRfU1RJQ0tZX1JFU0VUX04vTUdNVF9SRVNF
VF9OL1JFU0VUX04KPiAgICAgc2ltdWx0YW5lb3VzbHkuCj4gdjQ6IHVzZSBkZXZfZXJyX3Byb2Jl
IGluIGVycm9yIHBhdGguCj4gdjM6IEZpeCB0eXBvIGluIGNvbW1pdCBtZXNzYWdlLCBkcm9wcGVk
IHJlcG9ydGVkIGJ5Lgo+IHYyOiBGaXggY29tcGlsYXRpb24gZXJyb3IgcmVwb3J0ZWQgYnkgSW50
ZWwgdGVzdCByb2JvdAo+ICAgICBmaXhlZCBjaGVja3BhdGNoIHdhcm5pbmcuCj4gLS0tCj4gIGRy
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jIHwgMTU0ICsrKysrLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmggfCAg
MjYgKysrLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0OCBpbnNlcnRpb25zKCspLCAxMzIgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2Nr
Y2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMKPiBpbmRleCAy
Nzc3ZWYwY2I1OTkuLmMxN2FhOGVjODBiOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNp
ZS1yb2NrY2hpcC5jCgpbLi4uXQoKPiBAQCAtMjUyLDMxICsxNzcsMTAgQEAgaW50IHJvY2tjaGlw
X3BjaWVfaW5pdF9wb3J0KHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiAgCQlnb3Rv
IGVycl9wb3dlcl9vZmZfcGh5Owo+ICAJfQo+ICAKPiAtCS8qCj4gLQkgKiBQbGVhc2UgZG9uJ3Qg
cmVvcmRlciB0aGUgZGVhc3NlcnQgc2VxdWVuY2Ugb2YgdGhlIGZvbGxvd2luZwo+IC0JICogZm91
ciByZXNldCBwaW5zLgo+IC0JICovCj4gLQllcnIgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KHJv
Y2tjaGlwLT5tZ210X3N0aWNreV9yc3QpOwo+IC0JaWYgKGVycikgewo+IC0JCWRldl9lcnIoZGV2
LCAiZGVhc3NlcnQgbWdtdF9zdGlja3lfcnN0IGVyciAlZFxuIiwgZXJyKTsKPiAtCQlnb3RvIGVy
cl9wb3dlcl9vZmZfcGh5Owo+IC0JfQo+IC0KPiAtCWVyciA9IHJlc2V0X2NvbnRyb2xfZGVhc3Nl
cnQocm9ja2NoaXAtPmNvcmVfcnN0KTsKPiAtCWlmIChlcnIpIHsKPiAtCQlkZXZfZXJyKGRldiwg
ImRlYXNzZXJ0IGNvcmVfcnN0IGVyciAlZFxuIiwgZXJyKTsKPiAtCQlnb3RvIGVycl9wb3dlcl9v
ZmZfcGh5Owo+IC0JfQo+IC0KPiAtCWVyciA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocm9ja2No
aXAtPm1nbXRfcnN0KTsKPiAtCWlmIChlcnIpIHsKPiAtCQlkZXZfZXJyKGRldiwgImRlYXNzZXJ0
IG1nbXRfcnN0IGVyciAlZFxuIiwgZXJyKTsKPiAtCQlnb3RvIGVycl9wb3dlcl9vZmZfcGh5Owo+
IC0JfQo+IC0KPiAtCWVyciA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocm9ja2NoaXAtPnBpcGVf
cnN0KTsKPiArCWVyciA9IHJlc2V0X2NvbnRyb2xfYnVsa19kZWFzc2VydChST0NLQ0hJUF9OVU1f
Q09SRV9SU1RTLAo+ICsJCQkJCSAgcm9ja2NoaXAtPmNvcmVfcnN0cyk7Cj4gIAlpZiAoZXJyKSB7
Cj4gLQkJZGV2X2VycihkZXYsICJkZWFzc2VydCBwaXBlX3JzdCBlcnIgJWRcbiIsIGVycik7Cj4g
KwkJZGV2X2VycihkZXYsICJDb3VsZG4ndCBkZWFzc2VydCBDb3JlICVkXG4iLCBlcnIpOwoKIkNv
dWxkbid0IGRlYXNzZXJ0IENvcmUgcmVzZXRzICVkIgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
