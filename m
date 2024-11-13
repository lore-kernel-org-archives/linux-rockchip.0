Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92E30D637A3
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 17:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFyi5v3GvIaRXQJNHm5p43/yaoZESNaNwxHybeU6LqQ=; b=VYZiyf1s78LhC0
	xMw+TdHbwqD1nSCLg+lGF7YfmGgPB2ldBudGA0DlQrLR55eIxDcdW49oFwPwmEJYhohg2SZmYg+Xs
	Oxh3/INkkSvlXsuJsR3kGn4lv//or36/6V7SzFOcNwpSyBZWedUPcBp/p2HZysJVQ7gnw6oUzxeEA
	CtNwMY7c0+37C99ZWbLQQRcBk+B00i+H8mPfyMbwi1Srervu/ID6De3IIoMBxnK0G3ylafj5Nu9+Q
	PZvGEanX7VvATPDYHJaVYt1B+QKnGj2EYPq6WA7E72sT4PWR2jYs0NPlz+hg2Lyeg6XMQDVVDu2vq
	HRiH6qlysPxfWode9vHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBHXg-00000007cbE-3Cxr;
	Wed, 13 Nov 2024 17:52:36 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBHXc-00000007cab-3NL2
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 17:52:34 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-20ca1b6a80aso78903845ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Nov 2024 09:52:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731520352; x=1732125152; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JzTYHEhyfkGjuQJogiAkXzIfpSGGRv5TA6Fn2K6bkhI=;
        b=uJ1h3iT2URoqn8YA/QeaEIUKAyrEwfC/NJQ3VvCT0cKH7f00+SCCPVV6XoLkw8JJ9f
         Pz8d0Xh3d1vzyXZjNNBP/G4CEvBaXPlvHzmWUF7xy/6ZuPPn4qSdDMlG6JG5Ddfi4H/1
         HOhctD57Z/aXePrKwSTkCUDElgpuYcYgd2MFzXPcE1XoGrIepRe2EaAN71cOeDA64TOZ
         YxtZ1kW9/HJjJqUoH/+KL+se9ZCwN8GT/Xe7swTRe7srEX34H0HyFqjcsGRdCmGmUjUj
         /6/7EjsBl+N0fIJ3KT78mcqYBQGyU6whLb7SDLprJ59r/mIbxTlv5Uim3KOEZD46m52c
         5Qiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731520352; x=1732125152;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JzTYHEhyfkGjuQJogiAkXzIfpSGGRv5TA6Fn2K6bkhI=;
        b=foxteV1EGPDJzRbfPUD9IfDUIQuvGjUZs/lOonuGg/6iHeHmYZ0y/2b+M8DVnQaqgh
         +ftEiFtB6uHexErqHrI65tbQ2x6B9cXOTBd/vBjihAUJianK3dGI0c2GJnPvx7dPfcaJ
         F4UxWfyRkYaAZIPXJF7g57+Ru43qfLfX8qSsjgThECwYYL6mBSIGBckbjNdLKum3uaul
         IhvLZxnR6wJnT3NwvysfcI56zw9wDkXhPASNtjZjRznXkAtEqtnUwUYXNRusLLzc2VpJ
         XSFUw3MyjhiulQcxa3AxRM+zfFjRZTyl3idhscSkzM9f9sPzJKxHpP7fUoyYHRqkFod8
         llVg==
X-Forwarded-Encrypted: i=1; AJvYcCU5QIHvnTTrGjw4H5GIoBMO8sMylUtPdO5dJbJsZobzjUvVqIwYtY9PwPV01TG+n+2qWk+yXoeFcGJ18K5ziA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzj4Y2AS+PwC52xdJrj6u7zRFqUaS/mz7ni70pvvQYgh1Pkw3hK
	Nlbq+xgMDQVVY0vlK8IajDX1OA5B7e/wxmRLSFDTQ9IQtXtlrc7mWr8/1cFKKw==
X-Google-Smtp-Source: AGHT+IFXn5Zf9VFbyyoUdohwRmAq++a0UnSXGYIIwLIA7XmqWnin+uF/rmhGZoku3/76bqld4xAULA==
X-Received: by 2002:a17:902:eccf:b0:20c:e2ff:4a2e with SMTP id d9443c01a7336-21183d7cf32mr329444555ad.53.1731520351829;
        Wed, 13 Nov 2024 09:52:31 -0800 (PST)
Received: from thinkpad ([117.213.102.160])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177e44586sm113178355ad.165.2024.11.13.09.52.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 09:52:31 -0800 (PST)
Date: Wed, 13 Nov 2024 23:22:22 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v5 00/14] Fix and improve the Rockchip endpoint driver
Message-ID: <20241113175222.eh76hksyj6sptwvo@thinkpad>
References: <20241017015849.190271-1-dlemoal@kernel.org>
 <117828c6-92c4-4af4-b47e-f049f9c2cb7b@kernel.org>
 <ed723fe1-e243-4a9e-8d1c-f29461d07cb7@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ed723fe1-e243-4a9e-8d1c-f29461d07cb7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_095232_876194_DAA14E05 
X-CRM114-Status: GOOD (  29.16  )
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

T24gV2VkLCBOb3YgMTMsIDIwMjQgYXQgMTE6Mjk6NDhQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gT24gMTAvMjkvMjQgMTk6MzUsIERhbWllbiBMZSBNb2FsIHdyb3RlOgo+ID4gT24g
MTAvMTcvMjQgMTA6NTgsIERhbWllbiBMZSBNb2FsIHdyb3RlOgo+ID4+IFRoaXMgcGF0Y2ggc2Vy
aWVzIGZpeCB0aGUgUENJIGFkZHJlc3MgbWFwcGluZyBoYW5kbGluZyBvZiB0aGUgUm9ja2NoaXAK
PiA+PiBQQ0kgZW5kcG9pbnQgZHJpdmVyLCByZWZhY3RvciBzb21lIG9mIGl0cyBjb2RlLCBpbXBy
b3ZlcyBsaW5rIHRyYWluaW5nCj4gPj4gYW5kIGFkZHMgaGFuZGxpbmcgb2YgdGhlIFBFUlNUIyBz
aWduYWwuCj4gPj4KPiA+PiBUaGlzIHNlcmllcyBpcyBvcmdhbml6ZWQgYXMgZm9sbG93czoKPiA+
PiAgLSBQYXRjaCAxIGZpeGVzIHRoZSByb2NrY2hpcCBBVFUgcHJvZ3JhbW1pbmcKPiA+PiAgLSBQ
YXRjaCAyLCAzIGFuZCA0IGludHJvZHVjZSBzbWFsbCBjb2RlIGltcHJvdm1lbnRzCj4gPj4gIC0g
UGF0Y2ggNSBpbXBsZW1lbnRzIHRoZSAuYWxpZ25fYWRkcigpIG9wZXJhdGlvbiB0byBtYWtlIHRo
ZSBSSzMzOTkKPiA+PiAgICBlbmRwb2ludCBjb250cm9sbGVyIGRyaXZlciBmdWxseSBmdW5jdGlv
bmFsIHdpdGggdGhlIG5ldwo+ID4+ICAgIHBjaV9lcGNfbWVtX21hcCgpIGZ1bmN0aW9uCj4gPj4g
IC0gUGF0Y2ggNiB1c2VzIHRoZSBuZXcgYWxpZ25fYWRkciBvcGVyYXRpb24gZnVuY3Rpb24gdG8g
Zml4IHRoZSBBVFUKPiA+PiAgICBwcm9ncmFtbWluZyBmb3IgTVNJIElSUSBkYXRhIG1hcHBpbmcK
PiA+PiAgLSBQYXRjaCA3LCA4LCA5IGFuZCAxMCByZWZhY3RvciB0aGUgZHJpdmVyIGNvZGUgdG8g
bWFrZSBpdCBtb3JlCj4gPj4gICAgcmVhZGFibGUKPiA+PiAgLSBQYXRjaCAxMSBpbnRyb2R1Y2Vz
IHRoZSAuc3RvcCgpIGVuZHBvaW50IGNvbnRyb2xsZXIgb3BlcmF0aW9uIHRvCj4gPj4gICAgY29y
cmVjdGx5IGRpc2FibGUgdGhlIGVuZHBvcGludCBjb250cm9sbGVyIGFmdGVyIHVzZQo+ID4+ICAt
IFBhdGNoIDEyIGltcHJvdmVzIGxpbmsgdHJhaW5pbmcKPiA+PiAgLSBQYXRjaCAxMyBpbXBsZW1l
bnRzIGhhbmRsaW5nIG9mIHRoZSAjUEVSU1Qgc2lnbmFsCj4gPj4gIC0gUGF0Y2ggMTQgYWRkcyBh
IERUIG92ZXJsYXkgZmlsZSB0byBlbmFibGUgRVAgbW9kZSBhbmQgZGVmaW5lIHRoZQo+ID4+ICAg
IFBFUlNUIyBHUElPIChyZXNldC1ncGlvcykgcHJvcGVydHkuCj4gPj4KPiA+PiBUaGVzZSBwYXRj
aGVzIHdlcmUgdGVzdGVkIHVzaW5nIGEgUGluZSBSb2NrcHJvNjQgYm9hcmQgdXNlZCBhcyBhbgo+
ID4+IGVuZHBvaW50IHdpdGggdGhlIHRlc3QgZW5kcG9pbnQgZnVuY3Rpb24gZHJpdmVyIGFuZCBh
IHByb3RvdHlwZSBudm1lCj4gPj4gZW5kcG9pbnQgZnVuY3Rpb24gZHJpdmVyLgo+ID4gCj4gPiBQ
aW5nID8gSWYgdGhlcmUgYXJlIG5vIGlzc3VlcywgY2FuIHdlIGdldCB0aGlzIHF1ZXVlZCB1cCA/
Cj4gCj4gTWFuaSwKPiAKPiBQaW5nIEFHQUlOICEhISEKPiAKPiBJIGRvIG5vdCBzZWUgYW55dGhp
bmcgcXVldWVkIGluIHBjaS9uZXh0LiBXaGF0IGlzIHRoZSBibG9ja2VyID8KPiBUaGVzZSBwYXRj
aGVzIGhhdmUgYmVlbiBzaXR0aW5nIG9uIHRoZSBsaXN0IGZvciBuZWFybHkgYSBtb250aCBub3cs
IFBMRUFTRSBETwo+IFNPTUVUSElORy4gQ29tbWVudCBvciBhcHBseSwgYnV0IHBsZWFzZSByZXBs
eSBzb21ldGhpbmcuCj4gCgpEYW1pZW4sCgpTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkuIFRoaW5n
cyBnb3QgYSBiaXQgaGVjdGljIGR1ZSB0byBjb21wYW55IG9uc2l0ZSBtZWV0aW5nLgpJJ20gZ29p
bmcgdGhyb3VnaCBteSBxdWV1ZSBub3cuCgpCdXQgRllJLCBJIGRvbid0IG1lcmdlIHBhdGNoZXMg
b3V0c2lkZSBkcml2ZXJzL3BjaS9lbmRwb2ludC8KCi0gTWFuaQoKPiA+IAo+ID4+Cj4gPj4gQ2hh
bmdlcyBmcm9tIHY0Ogo+ID4+ICAtIEFkZGVkIHBhdGNoIDYKPiA+PiAgLSBBZGRlZCBjb21tZW50
cyB0byBwYXRjaCAxMiBhbmQgMTMgdG8gY2xhcmlmeSBsaW5rIHRyYWluaW5nIGhhbmRsaW5nCj4g
Pj4gICAgYW5kIFBFUlNUIyBHUElPIHVzZS4KPiA+PiAgLSBBZGRlZCBwYXRjaCAxNAo+ID4+Cj4g
Pj4gQ2hhbmdlcyBmcm9tIHYzOgo+ID4+ICAtIEFkZHJlc3NlZCBNYW5pJ3MgY29tbWVudHMgKHNl
ZSBtYWlsaW5nIGxpc3QgZm9yIGRldGFpbHMpLgo+ID4+ICAtIFJlbW92ZWQgb2xkIHBhdGNoIDEx
IChkdC1iaW5kaW5nIGNoYW5nZXMpIGFuZCBpbnN0ZWFkIHVzZSBpbiBwYXRjaCAxMgo+ID4+ICAg
IHRoZSBhbHJlYWR5IGRlZmluZWQgcmVzZXRfZ3Bpb3MgcHJvcGVydHkuCj4gPj4gIC0gQWRkZWQg
cGF0Y2ggNgo+ID4+ICAtIEFkZGVkIHJldmlldyB0YWdzCj4gPj4KPiA+PiBDaGFuZ2VzIGZyb20g
djI6Cj4gPj4gIC0gU3BsaXQgdGhlIHBhdGNoIHNlcmllcwo+ID4+ICAtIENvcnJlY3RlZCBwYXRj
aCAxMSB0byBhZGQgdGhlIG1pc3NpbmcgIm1heEl0ZW0iCj4gPj4KPiA+PiBDaGFuZ2VzIGZyb20g
djE6Cj4gPj4gIC0gQ2hhbmdlZCBwY2lfZXBjX2NoZWNrX2Z1bmMoKSB0byBwY2lfZXBjX2Z1bmN0
aW9uX2lzX3ZhbGlkKCkgaW4gcGF0Y2gKPiA+PiAgICAxLgo+ID4+ICAtIFJlbW92ZWQgcGF0Y2gg
IlBDSTogZW5kcG9pbnQ6IEltcHJvdmUgcGNpX2VwY19tZW1fYWxsb2NfYWRkcigpIgo+ID4+ICAg
IChmb3JtZXIgcGF0Y2ggMiBvZiB2MSkKPiA+PiAgLSBWYXJpb3VzIHR5cG9zIGNsZWFudXBzIGFs
bCBvdmVyLiBBbHNvIGZpeGVkIHNvbWUgYmxhbmsgc3BhY2UKPiA+PiAgICBpbmRlbnRhdGlvbi4K
PiA+PiAgLSBBZGRlZCByZXZpZXcgdGFncwo+ID4+Cj4gPj4gRGFtaWVuIExlIE1vYWwgKDE0KToK
PiA+PiAgIFBDSTogcm9ja2NoaXAtZXA6IEZpeCBhZGRyZXNzIHRyYW5zbGF0aW9uIHVuaXQgcHJv
Z3JhbW1pbmcKPiA+PiAgIFBDSTogcm9ja2NoaXAtZXA6IFVzZSBhIG1hY3JvIHRvIGRlZmluZSBF
UCBjb250cm9sbGVyIC5hbGlnbiBmZWF0dXJlCj4gPj4gICBQQ0k6IHJvY2tjaGlwLWVwOiBJbXBy
b3ZlIHJvY2tjaGlwX3BjaWVfZXBfdW5tYXBfYWRkcigpCj4gPj4gICBQQ0k6IHJvY2tjaGlwLWVw
OiBJbXByb3ZlIHJvY2tjaGlwX3BjaWVfZXBfbWFwX2FkZHIoKQo+ID4+ICAgUENJOiByb2NrY2hp
cC1lcDogSW1wbGVtZW50IHRoZSBwY2lfZXBjX29wczo6YWxpZ25fYWRkcigpIG9wZXJhdGlvbgo+
ID4+ICAgUENJOiByb2NrY2hpcC1lcDogRml4IE1TSSBJUlEgZGF0YSBtYXBwaW5nCj4gPj4gICBQ
Q0k6IHJvY2tjaGlwLWVwOiBSZW5hbWUgcm9ja2NoaXBfcGNpZV9wYXJzZV9lcF9kdCgpCj4gPj4g
ICBQQ0k6IHJvY2tjaGlwLWVwOiBSZWZhY3RvciByb2NrY2hpcF9wY2llX2VwX3Byb2JlKCkgbWVt
b3J5IGFsbG9jYXRpb25zCj4gPj4gICBQQ0k6IHJvY2tjaGlwLWVwOiBSZWZhY3RvciByb2NrY2hp
cF9wY2llX2VwX3Byb2JlKCkgTVNJLVggaGlkaW5nCj4gPj4gICBQQ0k6IHJvY2tjaGlwLWVwOiBS
ZWZhY3RvciBlbmRwb2ludCBsaW5rIHRyYWluaW5nIGVuYWJsZQo+ID4+ICAgUENJOiByb2Nrc2hp
cC1lcDogSW1wbGVtZW50IHRoZSBwY2lfZXBjX29wczo6c3RvcF9saW5rKCkgb3BlcmF0aW9uCj4g
Pj4gICBQQ0k6IHJvY2tjaGlwLWVwOiBJbXByb3ZlIGxpbmsgdHJhaW5pbmcKPiA+PiAgIFBDSTog
cm9ja2NoaXAtZXA6IEhhbmRsZSBQRVJTVCMgc2lnbmFsIGluIGVuZHBvaW50IG1vZGUKPiA+PiAg
IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgcm9ja3BybzY0IG92ZXJsYXkgZm9yIFBDSWUgZW5k
cG9pbnQgbW9kZQo+ID4+Cj4gPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZp
bGUgICAgICAgICB8ICAgMSArCj4gPj4gIC4uLi9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LXBj
aWUtZXAuZHRzbyAgICB8ICAyMCArCj4gPj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1y
b2NrY2hpcC1lcC5jICAgICB8IDQzMiArKysrKysrKysrKysrKy0tLS0KPiA+PiAgZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYyAgIHwgICA0ICstCj4gPj4gIGRyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jICAgICAgICB8ICAyMSArLQo+ID4+ICBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCAgICAgICAgfCAgMjQgKy0KPiA+
PiAgNiBmaWxlcyBjaGFuZ2VkLCA0MDYgaW5zZXJ0aW9ucygrKSwgOTYgZGVsZXRpb25zKC0pCj4g
Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1yb2NrcHJvNjQtcGNpZS1lcC5kdHNvCj4gPj4KPiA+IAo+ID4gCj4gCj4gCj4gLS0gCj4gRGFt
aWVuIExlIE1vYWwKPiBXZXN0ZXJuIERpZ2l0YWwgUmVzZWFyY2gKCi0tIArgrq7grqPgrr/grrXg
rqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
