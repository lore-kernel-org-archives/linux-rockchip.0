Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8915DC7115B
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 15:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJuA6OdhbiVq2lwgj6lOn1v1X0/eX/mlWT0+GLxyWLQ=; b=PcDBnXuYIEg/pH
	0D9NqvRR8X+Kk94KheKJtne8c637b3f1BSR4H9J/IK0qOHdQAFufT/VF7ubzg61tH7wcJuYe5rzIJ
	yDGKe1rcwYVF+EfQQ7heHdWsODZL1ze+ubmYbHjXuxJ2WGkYriwwTu7r+F4cmH2ZgFrc2X09lzyoi
	uNZFF1QW0J8Z5ipvILkpEf4+ET30rtSbXzymx93GzmTCWQICZP7wJCNCmvl6eiJWujcXDekgDm7Ni
	/bEMvLA16v6WU59uqTGgsQotrJjYF+AcF2v1sGydepuHS0L2lEh0dAq0nYtfH0Re7nO0c5pYa2+3w
	zjxP6AIFLkj+JjYRGrfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRurx-0000000AcMe-1kAI;
	Wed, 18 Jun 2025 15:38:33 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRtCn-0000000AMSm-3j1c;
	Wed, 18 Jun 2025 13:51:59 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4a5851764e1so133974421cf.2;
        Wed, 18 Jun 2025 06:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750254716; x=1750859516; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8krqiHD4H6SdO/c1xN2g7T+0SS16eUWDEAWw9hScjck=;
        b=INDaggVqryJkETYiACP/RU7OtvX3XJJYQg42bCj4/XCELzRF1/Uxdt4j4XtKzq+I+y
         xUyTy60HhhRy7cjouJPKeCIL+nZQysi3ddnQKHwdsxDkdUkW6czCIpI6dDZedjV74e3e
         O/GJ3o+24NH/2uMqBIY4VYd3CumwI6n8KFzy0vEgNwzmPSC1qydZkAaNW9vn0+9dpZZ3
         6cqNV4l23T7jrCuuLnOzw+dOkK/Om9r+5gJ0Y4T7tyES5IE5VDncWiFTRhbTnMZqRC+f
         NEDzfIwv4mm7649Jv5aFIl/Wol2NyB08ZKSF4xIRRQpbuZbedq/1rzaUWpIdEnfhV4IY
         Hovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750254716; x=1750859516;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8krqiHD4H6SdO/c1xN2g7T+0SS16eUWDEAWw9hScjck=;
        b=OGewuWVnx0CDaNM2CagXgUV5OQK0BtLsSGQeONnY2tdkhp0ODjE2f3xod7MDknTsVx
         xbZ6TpjjYurVYUIA0sQhbUTmVuWcdmJBi35827hV8PjvKyIHrAzAMi24e6F7e86DMXSv
         kn5+pqwGYhIUx64a98/IJZXrW4jAK3CbZehE1MSHoHwwmFY3lvRr5wMCmP+4vJWzHzqk
         KO+SYkweBrxpROivJlVberSb7MAMJ5KI34pfOb1oU7AenwHZIO3iO7kq5Qfp5Z3h5cpT
         +0Do0x1q5Wna7VdTE+xZ1RYLLTPEV116eJbggJaHPIkDcuBMooBeFGbfWQ5DO/XSlRkI
         ph1A==
X-Forwarded-Encrypted: i=1; AJvYcCUHiscN1VHHVg/xoJjKN6LU8spp+dgmmySGvTFs9ou+cDH6zcV2Iv6qkKUhPKH4aD6Fmbky+udskK0BwfAjW30=@lists.infradead.org, AJvYcCVYdZCHWrG0CC3qMjxnCatjVDtF8tWelFoFhB0p0zNwycbAmo/RIaga4reRsc1c02MfKPyA3WqQI+ZEFiSfZwS/@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3K9zdocPQtJGd/JzzTDZ5UHtoo3K8v03g/iEwGCTSEOrb/Nu8
	CSZ/ApHz4RB7um+J5ZDimL29ePydpVu4NOtZiC27WAGhl+ntZbVHUZ8Xa7cNazt+5GLAbrhE/Ya
	qqK8e0lZY2NoHWrSHNce/1ymtfvuUBtfdMZ4aQH03Ow==
X-Gm-Gg: ASbGnctx33iqoNyxsivE4mp1ZB1IDcMP2iAypmUfBjpPUvnJfz3uPHPI2fHztcTA7Je
	wV0eUnYxxZqfYXG03ZTs7aN4kmRK3FiJ9ZFmlUnejTEcpn9dn/S6TZGEliqkN7F8XvPqGlMKBxz
	hu1QggNh0/bYgZdxzqSGxpI34xNdPjc0+sWVKXpDM2gwnh
X-Google-Smtp-Source: AGHT+IFjLbj9BEdwTMYyliD/R38NY95P1fawYFekYrWxlx0+R36xCe+ioWLBLqW6E3ETOu7kqPcQGiL5wE4zGwh2p+0=
X-Received: by 2002:ac8:7d56:0:b0:4a7:189a:7580 with SMTP id
 d75a77b69052e-4a73c596fddmr239579821cf.26.1750254716255; Wed, 18 Jun 2025
 06:51:56 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-1-717e8ce4ab77@gmail.com> <6656934.DvuYhMxLoT@workhorse>
 <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com>
 <512E950E-E8CB-443B-8E47-79F073D217E8@gmail.com> <CABjd4YxGQP=rH15EX12w36b7+82Dedf+rVH3v5V6gBwNv3V3iw@mail.gmail.com>
 <90218D7B-0CF5-4F5D-969A-909A44E6044F@gmail.com> <CABjd4Yw3FyVS0MBk2WdWKb24vkqrb09Tx3tj6B-xsmG1-Csk7w@mail.gmail.com>
 <80ACAAAE-F522-4199-9048-ADE69F6E1128@gmail.com>
In-Reply-To: <80ACAAAE-F522-4199-9048-ADE69F6E1128@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 18 Jun 2025 17:51:45 +0400
X-Gm-Features: AX0GCFvqMvYkd-RNYAsYCTEDXbFxfEzQX2sHnuaUv1aDcfcEAiv314iSEAb7Qg8
Message-ID: <CABjd4YyVJv0NmF9LsGWQ-O44MGjT5=FFeUjbg5rJ6XkNgjxb+g@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM Sige5
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_065157_928623_8E8E2C53 
X-CRM114-Status: GOOD (  29.33  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBKdW4gMTUsIDIwMjUgYXQgODowMOKAr1BNIFBpb3RyIE9uaXN6Y3p1awo8cGlvdHIu
b25pc3pjenVrQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gPiBXaWFkb21vxZvEhyBuYXBpc2Fu
YSBwcnpleiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+IHcgZG5pdSA5IGN6ZSAy
MDI1LCBvIGdvZHouIDE2OjA1Ogo+ID4KPiA+IE9uIFN1biwgSnVuIDgsIDIwMjUgYXQgMTE6MjTi
gK9BTSBQaW90ciBPbmlzemN6dWsKPiA+IDxwaW90ci5vbmlzemN6dWtAZ21haWwuY29tPiB3cm90
ZToKPiA+Pj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogQWxleGV5IENoYXJrb3YgPGFsY2hh
cmtAZ21haWwuY29tPiB3IGRuaXUgNSBjemUgMjAyNSwgbyBnb2R6LiAxNTo0MjoKPiA+Pj4+IEFs
ZXhleSwKPiA+Pj4+IEkgc2VlIHlvdSBhcmUgdXNpbmcgcmszNTc2IGJvYXJkIGxpa2UgbWUgKG5h
bm9waS1tNSkKPiA+Pj4+IEhhdmUgeW91IG9uIHlvdXIgYm9hcmQgY29ycmVjdGx5IHdvcmtpbmcg
Y3B1IGR2ZnM/Cj4gPj4+PiBJIG1lYW46IFsxXVtkZXNpcmVkIGNsb2NrcyByZXBvcnRlZCBieSBr
ZXJuZWwgc3lzZnMgYXJlIGluIHBhaXIgd2l0aCBbMltdY3VyIGNsb2Nrcz8KPiA+Pj4+IEluIG15
IGNhc2UgaSBzZWUgbWluZSBjcHUgbGl2ZXMgdG90YWxseSBvbiBpdOKAmXMgb3duIHdpdGggZHZm
czoKPiA+Pj4KPiA+Pj4gSGkgUGlvdHIsCj4gPj4+Cj4gPj4+IEkgaGF2ZW4ndCB0cmllZCB0byB2
YWxpZGF0ZSBhY3R1YWwgcnVubmluZyBmcmVxdWVuY2llcyB2cy4gcmVxdWVzdGVkCj4gPj4+IGZy
ZXF1ZW5jaWVzLCBidXQgc3ViamVjdGl2ZSBwZXJmb3JtYW5jZSBhbmQgcG93ZXIgY29uc3VtcHRp
b24gc2VlbSB0bwo+ID4+PiBiZSBpbiBsaW5lIHdpdGggd2hhdCBJIGV4cGVjdC4KPiA+Pgo+ID4+
IHdlbGwgLSBteSBzdWJqZWN0aXZlIGwmZiBpcyB0aGF0ICAtIGN1cnJlbnRseSAtIG15IHJrMzU3
NiBzZWVtcyDigJ5zbG93ZXIiIHRoYW4gaS5lLiA0eEE1MyBoNjE4Lgo+ID4KPiA+IEluIG15IGV4
cGVyaWVuY2UsIG5hdGl2ZSBjb21waWxhdGlvbiBvZiBHQ0MgMTQgdXNpbmcgOCB0aHJlYWRzIG9u
Cj4gPiBSSzM1NzYgKG1haW5saW5lIHdpdGggcGFzc2l2ZSBjb29saW5nIGFuZCB0aHJvdHRsaW5n
IGVuYWJsZWQpOiAyIGhvdXJzCj4gPiA2IG1pbnV0ZXMsIG9uIFJLMzU4OCAobWFpbmxpbmUgd2l0
aCBwYXNzaXZlIGNvb2xpbmcgdmlhIFJhZHhhIFJvY2sgNUIKPiA+IGNhc2UgYW5kIHRocm90dGxp
bmcgZW5hYmxlZCBidXQgbmV2ZXIga2lja2luZyBpbik6IDEgaG91ciAxMCBtaW51dGVzCj4KPiBi
eSBjdXJpb3NpdHkgaSBsb29rZWQgcmFuZG9tbHkgb24gMzU3NiB2cyAzNTg4Ogo+IG11bHRpdGhy
ZWFkIHBhc3NtYXJrOiAzNjc1IChodHRwczovL3d3dy5jcHViZW5jaG1hcmsubmV0L2NwdS5waHA/
Y3B1PVJvY2tjaGlwK1JLMzU3NiZpZD02MjEzKQo+IG11bHRpdGhyZWFkIHBhc3NtYXJrOiA0NTMw
IChodHRwczovL3d3dy5jcHViZW5jaG1hcmsubmV0L2NwdS5waHA/Y3B1PVJvY2tjaGlwK1JLMzU4
OCZpZD00OTA2KQo+Cj4gYXNzdW1pbmcgMzU4OCBhcyBiYXNlbGluZSwgMzU3NiBpcyBhcHByb3gg
MjAlIHNsb3dlciBvbiBtdWx0aXRocmVhZCBwYXNzbWFyayAoaGFzIH4wLDggY29tcCBwb3dlciBv
ZiAzNTg4KQo+IDcwIG1pbiBjb21waWxlIG9uIDM1ODggc2hvdWxkIHRha2Ugc29tZXRoaW5nIGxp
a2Ugfjg2bWluIG9uIDM1NzYuCj4gSW4geW91ciBjYXNlIDEyNm1pbiBjb21waWxlIG9uIDM1NzYg
c2hvd3MgMzU3NiBvZmZlcnMgMCw1NSBjb21wIHBvd2VyIG9mIDM1ODguCj4gUm91Z2hseSAzNTc2
IHNob3VsZCBkbyB0aGlzIHRhc2sgaW4gNDBtaW4gbGVzcyB0aGFuIHlvdSBjdXJyZW50bHkgc2Vl
IGkgdGhpbmsKPgo+Cj4gPiBDYW4ndCBzZWUgaG93IHUtYm9vdCB3b3VsZCBhZmZlY3QgQ1BVIHNw
ZWVkIGluIExpbnV4LCBhcyBsb25nIGFzIHlvdQo+ID4gdXNlIGNvbXBhcmFibGUgQVRGIGltYWdl
cy4gRG8geW91IHVzZSB0aGUgc2FtZSBrZXJuZWwgYW5kIGR0YiBpbiBhbGwKPiA+IHRoZXNlIGNh
c2VzPyBBbHNvLCB3aGF0J3MgeW91ciB0aGVybWFsIHNldHVwPwo+Cj4geWVzLiBpbiBhbGwgY2Fz
ZXMgb25seSBjaGFuZ2Ugd2FzOiB1Ym9vdCAmIGF0Zgo+IHRoZXJtYWwgaXMgYmFzZWQgb24gcmVj
ZW50IGNvbGxhYm9yYSBzZXJpZXMgKCsgcmVjZW50IHBvb2xpbmcgZml4IGZvciBjbG9ja3MgcmV0
dXJuIGZyb20gdGhyb3R0bGluZykKPgo+ID4KPiA+Cj4gPiBOb3Qgc3VyZSBVWCBpcyBhIHBhcnRp
Y3VsYXJseSBnb29kIG1lYXN1cmUgb2YgQ1BVIHBlcmZvcm1hbmNlLCBhcyBsb25nCj4gPiBhcyB5
b3UndmUgZ290IGEgcHJvcGVybHkgYWNjZWxlcmF0ZWQgRFJNIGdyYXBoaWNzIHBpcGVsaW5lLiBN
b3JlCj4gPiBsaWtlbHkgMkQvM0QgYW5kIG1lbW9yeS4KPgo+IGluZGVlZC4KPiBGb3IgcXVhbnRp
ZmllZCBsb29rIGnigJltIGxvb2tpbmcgb24gdi5zaW1wbGUgYXBwcm9hY2ggdG8gZXN0aW1hdGUg
cmVhbCBjbG9jayBpcyBodHRwOi8vdW9iLWhwYy5naXRodWIuaW8vMjAxNy8xMS8yMi9hcm0tY2xv
Y2stZnJlcS5odG1sCj4gYnkgY3VyaW9zaXR5IGkgbG9va2VkIHdoYXQgaXQgcmVwb3J0cyBvbiBh
NTMvYTU1L2E3Mi9hNzYgYW5kIGl0IGlzIHN1cnByaXNpbmdseSBhY2N1cmF0ZSA6LSkKPiBvbiBt
aW5lIDM1NzYgd2l0aCBjb2xsYWJvcmEgdWJvb3QrbWFpbmxpbmUgYXRmIGlzIGhvd3MgODAwTUh6
IChhbmQgaW4gcGVyZi4gZ292IGl0IHNlZW1zIHRvIGJlIGNvbnN0YW50KQo+Cj4gPgo+ID4gVGhl
cmUgbWlnaHQgYmUgc29tZSBkaWZmZXJlbmNlIGluIGhvdyBQVlRQTEwgYmVoYXZlcyBvbiBSSzM1
NzYgdnMuCj4gPiBSSzM1ODguIEJ1dCBmcmFua2x5IGZpcnN0IEkgd291bGQgY2hlY2sgaWYgeW91
IGFyZSB1c2luZyBjb21wYXJhYmxlCj4gPiBBVEYgaW1wbGVtZW50YXRpb25zIChlLmcuIHVwc3Ry
ZWFtIFRGLUEgaW4gYm90aCBjYXNlcyksIGtlcm5lbHMgYW5kCj4gPiB0aGVybWFsIGVudmlyb25t
ZW50IDopCj4KPiBhbGwgdGVzdHM6IHRoZSBzYW1lIDYuMTUuMiBtYWlubGluZSArIHNvbWUgY29s
bGFib3JhIHBhdGNoZXMKPgo+IGRpZmZzIHdlcmU6Cj4gMS5jb2xsYWJvcmEgdWJvb3RbMV0gKyBt
YWlubGluZSBhdGYgMi4xMwo+IDIuY29sbGFib3JhIHVib290WzFdICsgcm9ja2NoaXAgcmtiaW4g
YmwzMSBibG9iCj4gMy52ZW5kb3IgdWJvb3QgKGJpbiBkdW1wIGZyb20gZnJpZW5kbHllbGVjIHVi
dW50dSBpbWFnZSkKPgo+IG9uIDEvMiBpIHNlZSBraW5kIG9mIGlzc3VlIHdpdGggY2xvY2sgdmFs
dWVzIChpLmUuIHBlcmYgZ292IGdpdmVzIGNvbnN0YW50IDgwME1IeiBvbiBtYWlubGluZSBhdGYp
Lgo+IDMgc2VlbXMgdG8gcGVyZm9ybSBiZXR0ZXIgLSAoaS5lLiBwZXJmIGdvdiBnaXZlcyBjb25z
dGFudCAxNTAwTUh6IHNvIGFsbCBpcyBzbmFwcGllci9mYXN0ZXIpCgpUaGVyZSBpcyBpbmRlZWQg
c29tZXRoaW5nIHdlaXJkIGdvaW5nIG9uLiBJJ3ZlIHRyaWVkIHJ1bm5pbmcgc2JjLWJlbmNoClsx
XSwgYW5kIGV2ZW4gdGhvdWdoIEkgb2JzZXJ2ZSBkeW5hbWljYWxseSB2YXJ5aW5nIENQVSBmcmVx
dWVuY2llcwphZnRlciBib290IHdpdGggc2NoZWR1dGlsIGdvdmVybm9yLCBvbmNlIHNiYy1iZW5j
aCBzd2l0Y2hlcyB0aGUKZ292ZXJub3IgdG8gInBlcmZvcm1hbmNlIiBhbmQgZ29lcyB0aHJvdWdo
IHRoZSBPUFBzIGluIGRlc2NlbmRpbmcKZnJlcXVlbmN5IG9yZGVyLCB0aGUgQ1BVcyBzZWVtIHRv
IGdldCBzdHVjayBhdCB0aGUgbGFzdCBhcHBsaWVkIGxvdwpmcmVxdWVuY3kuIEV2ZW4gYWZ0ZXIg
bWF4IGZyZXF1ZW5jeSBnZXRzIHJldmVydGVkIGZyb20gNDA4IE1IeiB0bwpzb21ldGhpbmcgaGln
aGVyLCBldmVuIGFmdGVyIEkgc3dpdGNoIHRoZSBnb3Zlcm5vciB0byBzb21ldGhpbmcgZWxzZSAt
Cm5vIG1hdHRlciB3aGF0LiBPbmx5IGEgcmVib290IGdldHMgdGhlIGhpZ2hlciBmcmVxdWVuY2ll
cyAndW5zdHVjaycKZm9yIG1lLgoKVGhlc2UgYXJlIGFsbCBvYnNlcnZlZCBhdCBhcm91bmQgNTVD
IFNvQyB0ZW1wZXJhdHVyZSwgc28gdGhyb3R0bGluZyBpcwpub3QgYW4gaXNzdWUuIFJlZ3VsYXRv
cnMgYXJlIHN0dWNrIGF0IDk1MDAwMCB1ViAtIHdheSBhYm92ZSA3MDAwMDAgdVYKdGhhdCB0aGUg
NDA4IE1IeiBPUFAgcmVxdWlyZXMgKGFuZCBwb3dlciByZWFkaW5ncyBzZWVtIHRvIG1hdGNoOiBJ
J20KZ2V0dGluZyBhYm91dCAyLjNXIGNvbnN1bXB0aW9uIGF0IDQwOCBNSHogaW4gaWRsZSB2cy4g
bm9ybWFsIGlkbGUKcmVhZGluZyBvZiAxLjRXIGF0IGFyb3VuZCAxIEdIeikuCgpOb3Qgc3VyZSB3
aGF0J3MgZ29pbmcgb24gaGVyZSwgYW5kIEkgZG9uJ3QgcmVtZW1iZXIgc2VlaW5nIGFueXRoaW5n
CnNpbWlsYXIgb24gUkszNTg4LiBUaG91Z2h0cyB3ZWxjb21lLgoKQmVzdCByZWdhcmRzLApBbGV4
ZXkKClsxXSBodHRwczovL2dpdGh1Yi5jb20vVGhvbWFzS2Fpc2VyL3NiYy1iZW5jaAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
