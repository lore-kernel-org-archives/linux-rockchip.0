Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05ACBCAC5B9
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Sep 2025 15:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FiT8Sx9qldgCKK5DOrfw51S2v1bVulTkm7mflieDWtY=; b=MVFKws4V49O2Pu
	m+2+NeCGMMsjhcIpL7b9tU8GrLvQojBwzBQdodoCFyRuwFKq0spkVrw4UGWfxG7mO3kxYS4h/0tJb
	DVV/hhpcQr8+oMjPe0J7AVD8iBwvo8lb54mRs4F8OXXMgivI1klOu39TB5FHWvjAM3+OjDqE3btFj
	NDGlYfBJm7LB6qRn7LJnYh/D03Oq5LjAEa5PZa9HtIreuNnDNwvkxMg0mI35ovIqGdhLL8ZJH2J/i
	r6saWWHwxhAIcR2pws0tN3jTn6z745IA7VlimIRrGIzPXlLYjmKqM4e2DtVX/1jeh6jbMlwS3AgNY
	4l7Nl3xO2QemA8uWMcgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v29xg-00000002FE5-3SbQ;
	Fri, 26 Sep 2025 15:02:16 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v29xe-00000002FBE-0HZ5
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Sep 2025 15:02:16 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-46e2b7eee0dso64645e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Sep 2025 08:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1758898932; x=1759503732; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s7Baoif17kvHRJvWC6HYyOG9IuJ9PffDdtqs0FozkFg=;
        b=CvhyGr+OjUi3EEGv+8XVcklA3vhXgp/lwHwgAPYk0pVRoFwZ9gAI+4SJxTAroXd602
         RjXdlXfmHCWfh46zaMs3Erz2wA2PC+jBY65d/S1/vpQOlr1BdT1P/b24dhHWlNVIZ9BC
         tW73cfNhCBPtXZnEn6zszQ3L9GKkdRfjhZMbS6SHdDJb1f+TcUAge0dbku8biuA63fC8
         jGTUuvVTCINO2ZQem+vjA+JVvCPGvVOl0QzXzLC3tRtVFbbA5bXmYo9aD8XsmMuIAzJK
         y9aXjFTtme2A/gy+OkHS6L3EW3oxNLLh0N2ED9Bfm/y9pRQqw/5pa2ouKcHvYNfqTzPg
         pLAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758898932; x=1759503732;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s7Baoif17kvHRJvWC6HYyOG9IuJ9PffDdtqs0FozkFg=;
        b=fAVh2fhYA3sehGGze7tjl+nq/F2NeSy4KMfI+frzijztCsxtkphyFa7GPoOh6toPwa
         1PbRO7TkIBS/9ZZ814B0RIkp0Wb1aCmlwekAeMDK7hUo6daXmtf5I0sGA3NnRa8uuzXi
         ii8PWrCnJKn/16PoDz/Znd0UwQJAfraZnbL9aJI1K+cPA58AlWdx7i3TSs/S2bCZdhYZ
         47fe9Yg1ZIr8b/MSmBGkjly11SqCSDBAW37fuCb+Kr23xnAebdgKOl+AJAnELSwvdyaA
         MXiJf8LOj3RyzayQROfLaDhlspLmGiQxzJ5iEYaPiCAXt+1XAAU04G65ValtskxPeT9e
         P+/w==
X-Forwarded-Encrypted: i=1; AJvYcCWM/5IFWTfW8QzvLk7oZe+ZFGClSMg6L5pwbGndQ8kFOi8WrpASrvL1Y4un+sK7bY6uv6G39hyORQVpBr3aog==@lists.infradead.org
X-Gm-Message-State: AOJu0YzK55OMKZy5g0SpOR6BkvkU0jkeQHtUQY8NZDg8ENkdpQ1O+pIO
	rAm0Ag2ysk9RxjwmclBCM5A395K5E2U71t8LIZw/WcpGpSmdcLFhAaiLfYNuEDm/BA==
X-Gm-Gg: ASbGncuG9P2DMi8xvNEyNTrRgecLBWC/mk+BMJIf9VQlDlYypqcgHZ95MwXZ+JCRpVm
	z3lvVpa/J03Xxj8CKZ4+MMdSHufQWagno5dLqmNuK8hyHOKQ9DwTUcnuDj+qXf1omf63ounAI5V
	USVYB06isezjhGJeNsmAmTwJrXDSXGO+goDP18St3VATceRf0U5S7YB1tQZ+1SHNRra0kBWamM4
	+6I76m5vCbVGlcYUSB/7ohLnhoAGSpHMvEFKIhFqytmeTPATUgunEztxQMI/s2CJBulE0QuUxli
	5rwnI1BesDdj38MlbYdsiWME6GTjWfgVpiPzdPiB4feEOdGQyCLFyjp4UBXFtVUhPiJtS1WPfqu
	iByB1vnJrrlo4vXmthH1Vs1rewIVQxjU2gKlqjUQNhjpYf2WncUzGnjV9j4QVDa6ew457Rs57XC
	XeuQ==
X-Google-Smtp-Source: AGHT+IGGXmNBTu4UEfqjidL+GDIizhadTfvXaAwFgVVLBzv8UsZYzurqe8WWNcR71jr76VBG7flshQ==
X-Received: by 2002:a05:600c:40c4:b0:45f:2e6d:ca01 with SMTP id 5b1f17b1804b1-46e3b009830mr1290175e9.4.1758898931549;
        Fri, 26 Sep 2025 08:02:11 -0700 (PDT)
Received: from google.com (140.240.76.34.bc.googleusercontent.com. [34.76.240.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a9ac5basm141572865e9.7.2025.09.26.08.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 08:02:10 -0700 (PDT)
Date: Fri, 26 Sep 2025 15:02:07 +0000
From: Mostafa Saleh <smostafa@google.com>
To: Sjoerd Simons <sjoerd@collabora.com>
Cc: devicetree@vger.kernel.org,
	"moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>,
	linux-rockchip@lists.infradead.org,
	open list <linux-kernel@vger.kernel.org>,
	Rob Herring <robh@kernel.org>, krzk+dt@kernel.org,
	conor+dt@kernel.org, Heiko Stuebner <heiko@sntech.de>
Subject: Re: Support for Rock PI-4b
Message-ID: <aNaq72xKS4QaNjwx@google.com>
References: <CAFgf54oYjUEg9KkQUzneYTZH1Z8cX56va5M0853eWPFaYT+Z2A@mail.gmail.com>
 <638b9565b90714f56caa9535b7b9b96cd86100d6.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <638b9565b90714f56caa9535b7b9b96cd86100d6.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_080214_122376_6D144C73 
X-CRM114-Status: GOOD (  28.05  )
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

T24gRnJpLCBTZXAgMjYsIDIwMjUgYXQgMDQ6Mjg6NDhQTSArMDIwMCwgU2pvZXJkIFNpbW9ucyB3
cm90ZToKPiBPbiBGcmksIDIwMjUtMDktMjYgYXQgMTU6MDcgKzAxMDAsIE1vc3RhZmEgU2FsZWgg
d3JvdGU6Cj4gPiBIaSwKPiA+IAo+ID4gSSBhbSB0cnlpbmcgdG8gcnVuIExpbnV4WzFdIG9uIG15
IFJvY2sgUEktNGIsIHdoaWNoIEkgc2VlIGlzIHN1cHBvcnRlZCBpbgo+ID4gdGhlIGtlcm5lbCBp
biDigJxyazMzOTktcm9jay1waS00Yi5kdHPigJ0uCj4gPiAKPiA+IEhvd2V2ZXIsIGNvbXBpbGlu
ZyDigJxkZWZjb25maWfigJ0gKEFSTTY0KSBhbmQgZmxhc2hpbmcgbXkgSW1hZ2UgZG9lc27igJl0
Cj4gPiB3b3JrLAo+ID4gSXQganVzdCBoYW5ncyBiZWZvcmUgYW55IGNvbnNvbGUgKGV2ZW4gd2l0
aCBlYXJseWNvbiksIEkgdHJpZWQgdG8gYWxzbyB1c2UKPiA+IHNvbWUgb2YgdGhlIHZlbmRvciBj
b25maWdzIHdpdGggbm8gbHVjay4KPiA+IEkgZGlkIHNvbWUgcmVzZWFyY2ggYW5kIGZvdW5kIHRo
YXQgWzJdLCB3aGljaCBpbmRpY2F0ZXMgdGhhdCB0aGUgdXBzdHJlYW0KPiA+IHN1cHBvcnQgaGFz
IGJlZW4gYnJva2VuIGZvciBzb21lIHllYXJzPwo+IAo+IFdlJ3ZlIGdvdCB0aGUgUm9jayA0YiBp
biBvdXIgYXV0b21hdGVkIHRlc3RpbmcgbGFiIGFzIHBhcnQgb2Yga2VybmVsY2kgYW5kIG90aGVy
Cj4gZWZmb3J0cy4gVXBzdHJlYW0gd29ya3MganVzdCBmaW5lIG9uIHRob3NlIGJvYXJkcywgc28g
aXQncyBsaWtlbHkgYW4gaXNzdWUgaW4KPiB5b3VyIHNldHVwLgo+IAo+IFNlZSBlLmcgaHR0cHM6
Ly9sYXZhLmNvbGxhYm9yYS5kZXYvc2NoZWR1bGVyL2pvYi8xOTk3ODU1OCNMNTI1IGZvciBhIHJl
Y2VudAo+IHVwc3RyZWFtIGtlcm5lbCBib290LgoKVGhhbmtzIGEgbG90IGZvciB0aGUgcXVpY2sg
cmVzcG9uc2UhCgpJIGNhbiBzZWUgc29tZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIHRoaXMgbG9nIGFu
ZCBteSBzZXR1cC4KCjEtIE15IHVib290IHNlZW1zIGFuY2llbnQKICAgVS1Cb290IDIwMTcuMDkt
MDAwMjYtZzI0MzFmYTM0Njc4IENvbXBhcmVkIHRvIFUtQm9vdCAyMDI0LjA3LXJjNAoKMi0gVGhl
IGJvYXJkIG1vZGVsIGluIHRoaXMgbG9nIGlzIG5vdCA0YiBhcyBtaW5lCiAgIE1vZGVsOiBSYWR4
YSBST0NLIFBpIDRBIHdoaWxlIG1pbmUgc2hvd3MgTW9kZWw6IFJhZHhhIFJPQ0sgUGkgNEIKCjMt
IEkgYW0gdXNpbmcgTExWTSBub3QgR0NDIChJIGRvbid0IHRoaW5rIHRoYXQgbWF0dGVycyB0aG91
Z2gpCgo0LSBJIGFtIHVzaW5nIE1NQyB0byBib290IGFuZCBub3QgVEZUUAoKSSB3aWxsIHRyeSB0
byBsb29rIG1vcmUgaW50byB0aGUgZGlmZmVyZW5jZXMsIGFuZCB1cGRhdGUgdGhpcyB0aHJlYWQg
aW4KY2FzZSBJIHdhcyBzdWNjZXNzZnVsLgoKVGhhbmtzLApNb3N0YWZhCgo+IAo+IFJlZ2FyZHMs
Cj4gICBTam9lcmQKPiAKPiAKPiA+IAo+ID4gSGFzIGFueW9uZSB0cmllZCB0byBmbGFzaCBhIHJl
Y2VudCBrZXJuZWwgc3VjY2Vzc2Z1bGx5IG9uIGl0PyBvciBhbnkKPiA+IHRpcHMgYXJlIGdyZWF0
bHkgYXBwcmVjaWF0ZWQuCj4gPiBPdGhlcndpc2UsIG1heWJlIGl0IGNhbiBiZSByZW1vdmVkIHRv
IGF2b2lkIG1pc2xlYWRpbmcgb3RoZXIgZGV2ZWxvcGVycwo+ID4gKEkgZ290IHRoaXMgYm9hcmQg
dG8gZG8gc29tZSB1cHN0cmVhbSBrZXJuZWwgZGV2ZWxvcG1lbnQgb24pCj4gPiAKPiA+IFsxXSBi
YXNlOiA0ZmY3MWFmMDIwYWU1OWFlMmQ4M2IxNzQ2NDZmYzJhZDlmY2Q0ZGM0Cj4gPiBbMl0gaHR0
cHM6Ly93aWtpLnJhZHhhLmNvbS9Sb2NrcGk0L2Rldi9rZXJuZWwtbWFpbmxpbmUKPiA+IAo+ID4g
VGhhbmtzLAo+ID4gTW9zdGFmYQo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gPiBM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
