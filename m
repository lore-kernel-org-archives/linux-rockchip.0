Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ADB6D216A3
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 13:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1tiIPXG1Dw2Lqk7VhbROQ++EIliX00snoUBq9capyQ=; b=28DLzeCU5bzR7M
	EHIWmP7+mdkuPE5f0IHvw6YJAC0Y1ub/Sw5qCXYJqyZTWbB5IDLE9zPkjWJ3OVQa9mVIXTQs6sn6G
	1qLXKwwEl+pWrArg67XWS/RNtZFTPNvhM53dT10NsPlEd2tE0TMRGW2JXhqOp2LsdQkgXBnmdrI8U
	gMzNljwRRo7lUYVmiowUMCLctC03L7Hrikt/vnUSaFKcEDEAGQVrouunaR7x0Ze0sZmYw4XbEvr1M
	29CNBT2V1Y64SsDoGmEvCL4pmblOKlZz0fIcGHMz9hrPfXeh0o0gG5UTQtzHIPFtbzhR0PIFBN3d1
	ALqfOhk8kwZr0wTqN89w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0hbG-00000008LuD-3XdS;
	Tue, 15 Oct 2024 13:28:34 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0hbF-00000008Lta-0gbK;
	Tue, 15 Oct 2024 13:28:34 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-288661760d3so2446547fac.3;
        Tue, 15 Oct 2024 06:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728998912; x=1729603712; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IWqDxWvadGC9wDLvxZmIaej9XAk5rf8fvyRWEfaKRo4=;
        b=AnsvqbKMcje2X1lIbetqN/6BfG4/b7e07tcPsFLXHCWB6XHIMZV2+EOXQU17prFu4c
         n/Px2z/N7ZECE0gHGrsZSvLaZBChBNoSsyLoKfZjOH8uAucI5ccCTysyU4PZKJhTaxK+
         cesvygkPju5hj95e/3lTiZOcRRl2Eg+vary76KpfitfsyVgx8f5/5i3mX3GKYFgM97lJ
         xlRfi+vH6NbUVuQJD+UEBRS+JZIT2K06gH4iM7HfU9CZM00z4V0Jsmxjhh0o3PVKt79r
         Ys3w44TUhophlTP65HV44d+hANs0OYRCLH1xEjqsyOG5PO6hI7rojCOrmQEVVI1Ddha2
         8Jyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728998912; x=1729603712;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IWqDxWvadGC9wDLvxZmIaej9XAk5rf8fvyRWEfaKRo4=;
        b=BC8olqFFTmUXaehXIpl5UlvL2hLWpBI6qzGnv/2XFJj4iQKg4QWEuATZk8OYpQAYOF
         WFHHKNjiWJpCLqJmpvWhhbjyxewDViMlAA+9YsYEEMP9nZsZ8jdOi3fD6+8ejpmappXg
         ToPMZ6RAErBeIm9v2KL+t+t8mgXVasu8W2yJKrRVeY4m34UBdIb4zWKvfeM4E4JvkrkL
         degfwm7y+cvj81fxZKUNZqAYN1HV1E7ZQbsEwejdTxaZnx5o0xkcTmJUG27EHKEBdVBs
         EF2WcUNMqmS4X9WIc1586Sy5ZDraFqDR5XgxF1qkzs8YUStNKFo2d/DnITL/KPaZvDYs
         tzHQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/9tqTa+Q1cYfLpjupYW2MgDCymfJzsFYou2zWwD0np+C9hS7wRkOYJdgnQBhuVLD9iXfR8X+R4F4LoR4DeDw=@lists.infradead.org, AJvYcCW1szXJfyPuqvM3zcavDbThEW15sa7eyC94t8KzYWyxHn6IZtdKksWGDPp05oIcdXW7t6ab8IBcwOqz5M60L7h3@lists.infradead.org
X-Gm-Message-State: AOJu0Ywnn5YT1scxUFhR636JgyG7QzfdhSxqmA9KBQZk2AosDXYsH0Ld
	UpQmAZ9pnI4PXOqAZqp/2EI2YctihIShk/HbDWm8xUJ+WJzX+/0uBuAdngLTqPqUl2CX2LqUZmh
	2MudfeCaANGBN28IjMh4YSJBOYHs=
X-Google-Smtp-Source: AGHT+IFq5fDn8nTrIwaQuJIlwbgEPSS6kplgVvXk88bZhmCkCgxZuKJP9hkf4XPeEazNKkgpfWnEYXf6QBIwrI+OjJ4=
X-Received: by 2002:a05:6870:1ecf:b0:287:3d2f:468c with SMTP id
 586e51a60fabf-288edfd2cb8mr240159fac.30.1728998911656; Tue, 15 Oct 2024
 06:28:31 -0700 (PDT)
MIME-Version: 1.0
References: <20241014135210.224913-1-linux.amoon@gmail.com>
 <20241014135210.224913-3-linux.amoon@gmail.com> <20241015051141.g6fh222zrkvnn4l6@thinkpad>
 <CANAwSgSEkFtY6-i3TOPZbwB5EuD4BHboh_jsTwByQw7NLLrstQ@mail.gmail.com> <20241015125945.llbyg6w7viucw5rh@thinkpad>
In-Reply-To: <20241015125945.llbyg6w7viucw5rh@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 15 Oct 2024 18:58:15 +0530
Message-ID: <CANAwSgRxNoZ2NuYZq47+SweF4oQSDHjJXDYdywOAnJpDuGPUEw@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] PCI: rockchip: Simplify reset control handling by
 using reset_control_bulk*() function
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_062833_228158_1565CAFA 
X-CRM114-Status: GOOD (  30.32  )
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

SGkgTWFuaXZhbm5hbiwKCk9uIFR1ZSwgMTUgT2N0IDIwMjQgYXQgMTg6MjksIE1hbml2YW5uYW4g
U2FkaGFzaXZhbQo8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4g
T24gVHVlLCBPY3QgMTUsIDIwMjQgYXQgMDI6MzA6MjNQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiA+IEhpIE1hbml2YW5uYW4sCj4gPgo+ID4gVGhhbmtzIGZvciB5b3VyIHJldmlldyBjb21t
ZW50cy4KPiA+Cj4gPiBPbiBUdWUsIDE1IE9jdCAyMDI0IGF0IDEwOjQxLCBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0KPiA+IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4gd3JvdGU6Cj4g
PiA+Cj4gPiA+IE9uIE1vbiwgT2N0IDE0LCAyMDI0IGF0IDA3OjIyOjAzUE0gKzA1MzAsIEFuYW5k
IE1vb24gd3JvdGU6Cj4gPiA+ID4gUmVmYWN0b3IgdGhlIHJlc2V0IGNvbnRyb2wgaGFuZGxpbmcg
aW4gdGhlIFJvY2tjaGlwIFBDSWUgZHJpdmVyLAo+ID4gPiA+IGludHJvZHVjZSBhIG1vcmUgcm9i
dXN0IGFuZCBlZmZpY2llbnQgbWV0aG9kIGZvciBhc3NlcnQgYW5kCj4gPiA+ID4gZGVhc3NlcnQg
cmVzZXQgY29udHJvbGxlciB1c2luZyByZXNldF9jb250cm9sX2J1bGsqKCkgQVBJLiBVc2luZyB0
aGUKPiA+ID4gPiByZXNldF9jb250cm9sX2J1bGsgQVBJcywgdGhlIHJlc2V0IGhhbmRsaW5nIGZv
ciB0aGUgY29yZSBjbG9ja3MgcmVzZXQKPiA+ID4gPiB1bml0IGJlY29tZXMgbXVjaCBzaW1wbGVy
Lgo+ID4gPiA+Cj4gPiA+ID4gU3BpbHQgdGhlIHJlc2V0IGNvbnRyb2xsZXIgaW4gdHdvIGdyb3Vw
cyBhcyBwZXIgdGhlCj4gPiA+ID4gIFJLMzM5OSBUTSAgMTcuNS44LjEgUENJZSBJbml0aWFsaXph
dGlvbiBTZXF1ZW5jZQo+ID4gPiA+ICAgICAxNy41LjguMS4xIFBDSWUgYXMgUm9vdCBDb21wbGV4
Lgo+ID4gPiA+Cj4gPiA+ID4gNi4gRGUtYXNzZXJ0IHRoZSBQSVBFX1JFU0VUX04vTUdNVF9TVElD
S1lfUkVTRVRfTi9NR01UX1JFU0VUX04vUkVTRVRfTgo+ID4gPiA+ICAgIHNpbXVsdGFuZW91c2x5
Lgo+ID4gPiA+Cj4gPiA+Cj4gPiA+IEknZCByZXdvcmQgaXQgc2xpZ2h0bHk6Cj4gPiA+Cj4gPiA+
IEZvbGxvd2luZyB0aGUgcmVjb21tZW5kYXRpb25zIGluICdSb2NrY2hpcCBSSzMzOTkgVFJNIHYx
LjMgUGFydDInOgo+ID4gPgo+ID4gPiAxLiBTcGxpdCB0aGUgcmVzZXQgY29udHJvbHMgaW50byB0
d28gZ3JvdXBzIGFzIHBlciBzZWN0aW9uICcxNy41LjguMS4xIFBDSWUKPiA+ID4gYXMgUm9vdCBD
b21wbGV4Jy4KPiA+ID4KPiA+ID4gMi4gRGVhc3NlcnQgdGhlICdQaXBlLCBNR01UIFN0aWNreSwg
TUdNVCwgQ29yZScgcmVzZXRzIGluIGdyb3VwcyBhcyBwZXIgc2VjdGlvbgo+ID4gPiAnMTcuNS44
LjEuMSBQQ0llIGFzIFJvb3QgQ29tcGxleCcuIFRoaXMgaXMgYWNjb21wbGlzaGVkIHVzaW5nIHRo
ZQo+ID4gPiByZXNldF9jb250cm9sX2J1bGsgQVBJcy4KPiA+ID4KPiA+ID4gPiAtIGRldm1fcmVz
ZXRfY29udHJvbF9idWxrX2dldF9leGNsdXNpdmUoKTogQWxsb3dzIHRoZSBkcml2ZXIgdG8gZ2V0
IGFsbAo+ID4gPiA+ICAgcmVzZXRzIGRlZmluZWQgaW4gdGhlIERUIHRoZXJlYnkgcmVtb3Zpbmcg
dGhlIGhhcmRjb2RlZCByZXNldCBuYW1lcwo+ID4gPiA+ICAgaW4gdGhlIGRyaXZlci4KPiA+ID4g
PiAtIHJlc2V0X2NvbnRyb2xfYnVsa19hc3NlcnQoKTogQWxsb3dzIHRoZSBkcml2ZXIgdG8gYXNz
ZXJ0IHRoZSByZXNldHMKPiA+ID4gPiAgIGRlZmluZWQgaW4gdGhlIGRyaXZlci4KPiA+ID4gPiAt
IHJlc2V0X2NvbnRyb2xfYnVsa19kZWFzc2VydCgpOiBBbGxvd3MgdGhlIGRyaXZlciB0byBkZWFz
c2VydCB0aGUgcmVzZXRzCj4gPiA+ID4gICBkZWZpbmVkIGluIHRoZSBkcml2ZXIuCj4gPiA+ID4K
PiA+ID4KPiA+ID4gTm8gbmVlZCB0byBsaXN0IG91dCB0aGUgQVBJcy4gSnVzdCBhZGQgdGhlbSB0
byB0aGUgZmlyc3QgcGFyYWdyYXBoIGl0c2VsZiB0bwo+ID4gPiBleHBsYWluIGhvdyB0aGV5IGFy
ZSB1c2VkLgo+ID4gPgo+ID4KPiA+IEhlcmUgaXMgYSBzaG9ydCB2ZXJzaW9uIG9mIHRoZSBjb21t
aXQgbWVzc2FnZS4KPiA+Cj4gPiBJbnRyb2R1Y2UgYSBtb3JlIHJvYnVzdCBhbmQgZWZmaWNpZW50
IG1ldGhvZCBmb3IgYXNzZXJ0IGFuZCBkZWFzc2VydAo+ID4gdGhlIHJlc2V0IGNvbnRyb2xsZXIg
dXNpbmcgdGhlIHJlc2V0X2NvbnRyb2xfYnVsayooKSBBUEkuCj4gPiBTaW1wbGlmeSByZXNldCBo
YW5kbGluZyBmb3IgdGhlIGNvcmUgY2xvY2tzIHJlc2V0IHVuaXQgd2l0aCB0aGUKPiA+IHJlc2V0
X2NvbnRyb2xfYnVsayBBUElzLgo+ID4KPiA+IGRldm1fcmVzZXRfY29udHJvbF9idWxrX2dldF9l
eGNsdXNpdmUoKTogT2J0YWluIGFsbCByZXNldHMgZnJvbSB0aGUKPiA+ICAgICAgICAgICAgIGRl
dmljZSB0cmVlLCByZW1vdmluZyBoYXJkY29kZWQgbmFtZXMuCj4gPiByZXNldF9jb250cm9sX2J1
bGtfYXNzZXJ0KCk6IGFzc2VydCB0aGUgcmVzZXRzIGRlZmluZWQgaW4gdGhlIGRyaXZlci4KPiA+
IHJlc2V0X2NvbnRyb2xfYnVsa19kZWFzc2VydCgpOiBkZWFzc2VydCB0aGUgcmVzZXRzIGRlZmlu
ZWQgaW4gdGhlIGRyaXZlci4uCj4gPgo+Cj4gSG93IGFib3V0LAo+Cj4gIkN1cnJlbnRseSwgdGhl
IGRyaXZlciBhY3F1aXJlcyBhbmQgYXNzZXJ0cy9kZWFzc2VydHMgdGhlIHJlc2V0cyBpbmRpdmlk
dWFsbHkKPiB0aGVyZWJ5IG1ha2luZyB0aGUgZHJpdmVyIGNvbXBsZXggdG8gcmVhZC4gQnV0IHRo
aXMgY2FuIGJlIHNpbXBsaWZpZWQgYnkgdXNpbmcKPiB0aGUgcmVzZXRfY29udHJvbF9idWxrIEFQ
SXMuIFVzZSBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVsa19nZXRfZXhjbHVzaXZlKCkgQVBJIHRvCj4g
YWNxdWlyZSBhbGwgdGhlIHJlc2V0cyBhbmQgdXNlIHJlc2V0X2NvbnRyb2xfYnVsa197YXNzZXJ0
L2RlYXNzZXJ0fSgpIEFQSXMgdG8KPiBhc3NlcnQvZGVhc3NlcnQgdGhlbSBpbiBidWxrLgo+Cj4g
QWxzbyBmb2xsb3cgdGhlIHJlY29tbWVuZGF0aW9ucyBwcm92aWRlZCBpbiAnUm9ja2NoaXAgUksz
Mzk5IFRSTSB2MS4zIFBhcnQyJzoKPiAuLi4iCj4KPiAtIE1hbmkKClNvcnJ5IGZvciB0aGUgdHJv
dWJsZSwuClllcywgSSB3aWxsIHRyeSB0byBpbmNvcnBvcmF0ZSB5b3VyIHN1Z2dlc3Rpb25zCgpU
aGFua3MKLUFuYW5kCj4KPiA+IEZvbGxvd2luZyB0aGUgcmVjb21tZW5kYXRpb25zIGluICdSb2Nr
Y2hpcCBSSzMzOTkgVFJNIHYxLjMgUGFydDInOgo+ID4KPiA+IDEuIFNwbGl0IHRoZSByZXNldCBj
b250cm9scyBpbnRvIHR3byBncm91cHMgYXMgcGVyIHNlY3Rpb24gJzE3LjUuOC4xLjEgUENJZQo+
ID4gYXMgUm9vdCBDb21wbGV4Jy4KPiA+Cj4gPiAyLiBEZWFzc2VydCB0aGUgJ1BpcGUsIE1HTVQg
U3RpY2t5LCBNR01ULCBDb3JlJyByZXNldHMgaW4gZ3JvdXBzIGFzIHBlciBzZWN0aW9uCj4gPiAn
MTcuNS44LjEuMSBQQ0llIGFzIFJvb3QgQ29tcGxleCcuIFRoaXMgaXMgYWNjb21wbGlzaGVkIHVz
aW5nIHRoZQo+ID4gcmVzZXRfY29udHJvbF9idWxrIEFQSXMuCj4gPgo+ID4gRG9lcyB0aGlzIGxv
b2sgZ29vZCB0byB5b3U/IExldCBtZSBrbm93IGlmIHlvdSBuZWVkIGFueSBmdXJ0aGVyIGFkanVz
dG1lbnRzIQo+ID4KPiA+IEkgd2lsbCBmaXggdGhpcyBmb3IgQ0xLIGJ1bGsgYXMgd2VsbC4KPiA+
Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29t
Pgo+ID4gPgo+ID4gPiBTb21lIG5pdHBpY2tzIGJlbG93LiBSZXN0IGxvb2tzIGdvb2QuCj4gPgo+
ID4gSSB3aWxsIGZpeCB0aGVzZSBpbiB0aGUgbmV4dCB2ZXJzaW9uLgo+ID4KPiA+ID4gLSBNYW5p
Cj4gPiA+Cj4gPiA+IC0tCj4gPiA+IOCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KPiA+Cj4gPiBUaGFua3MKPiA+IC1BbmFuZAo+Cj4gLS0KPiDgrq7g
rqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
