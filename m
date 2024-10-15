Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B95BCFC279
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 09:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YUDRdaIKofYjj+5ZjbrxbummKItW0m21aQ/GpYHDfs=; b=Hg+L18kyN92Qp3
	ADsDlz8hSnhWWYtB7l/hIt30zKL9s6hasY2tqnweiKcfXEBsLNoCFU5Brxn8HkqXS1ZmPU50xiDds
	j2gXr1dEo8WFCoYdVAAoZiUbqRB/fV3n9kIJOa5cfn+aJDnEqNDhIgOCn+HfSS3uZ3rrR/EaRQLno
	AkSntYxUQZbz3zmYKdrwvLm2mGCDPP3SrjG7LAkB5UsvKPUos7hz3UJH2nXLz1NMzBgT5R+l+CMQl
	FaG5/9DuQEC34d6zgBf8sJNwpx/DEmwGNjs+h4Be+JZlqOgltE8jdq61TO+7urzCBjZyxSI9JMbF8
	fgPjtJ280X4fsET+yANw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0dcO-00000007eor-3Mzb;
	Tue, 15 Oct 2024 09:13:28 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0dQ3-00000007bWa-0ZkU;
	Tue, 15 Oct 2024 09:00:45 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-287b8444ff3so1889545fac.1;
        Tue, 15 Oct 2024 02:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728982842; x=1729587642; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RLp6JVFP095nF2eYEIFQ7G5HMe9lih7YXmsVYNx7OwQ=;
        b=a1a4I4S3apDOAEB0KsW3zd6OPueWbTaoxKnlUf3fynSjf1+MlGqoy42K9t9kLogOUZ
         SpVch4DrCu4kYmhQ8/FypcoxWDxQMq+x/lKck0F0v+YSjA13Qj7clMJ+7Gk4hPMuWNyO
         YGgYOOaU9D76OvcPVvo797JYqrs5f1nHPlOXEHAcLKhjFF+b+VjKFC33hIa+G6mBlJ5e
         o20ewZRDoDOkIFQofXfwciTlbncLMe9KoJ/BKZFnR3VV6xmUGpWipRBGFNV4O1GvQdMz
         noZu/E/00tm0gHu4d+J8jbkHvWsarSH2RlEDopxFoxp/4E1wCH1uO7MY3iRPUdE/Dp8J
         9crQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728982842; x=1729587642;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RLp6JVFP095nF2eYEIFQ7G5HMe9lih7YXmsVYNx7OwQ=;
        b=DskpjhwfN7EI/IsSTX7exSd/TZ0EsA996AHOQTTHViBZO3pkxkJe3F+OsGzJm3Y35E
         zJ1Od0LFfTQsIhc0HELJp153ilEz85FZPym4bl3KNd61gPo0l43GPtkLXLQJbSxSY1I7
         NYtE3y/VC5KKoFDC/0BfJIwgK63XUIfWzTspWlip6j+PLstoSIqxCjAMkXylnYKAHH6c
         Ed3HW4DmF45KWT5e6XkmTlmvaDqjBd2jPBGc8U/fbX5+iou3O3h85gRGjOa0FwmXWur9
         Yx3KaadKdTTn6zKeTs5I5md+k9rVFK8V5av1i02MafEIY1ezFdderCQXntFBCQj/gbc+
         DiHw==
X-Forwarded-Encrypted: i=1; AJvYcCWOHU9EGTi+pBqSfl0WpLN+drKi2L3hAHd33KyWl4/WRXBi4/pTTi8BvF1eNb/H6y+TV9cd/J3KGUPC0dPMKXDN@lists.infradead.org, AJvYcCXFZ7Bxp2ywa4/DM2LqHrWgLZ5/LdxfmmrHY4xQMi+Q6QUOyyTr2tYc0+j+B/Ms65+HK+G/n8QdG8RJY+iYBhU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+PwGHuJn+CbkfqRyCIWkyZTNHnbBPEa0/OKf3cfbY1U4dZjY7
	FD5UFItVxdLrCwqo3CpbfL0uEzjfT0ZGo+oQahKHopWWq+eaEpxBFmQIMIQFR3iXLilev1LPj9j
	WVPJ0PpScSEGQvPdPZRKWFSrFzdM=
X-Google-Smtp-Source: AGHT+IGFGtlzDsf36x9uxxnLnYaB/UrLJC/zDnON1yPfZ7aozRRs96CNtkoqkrN3NerehmbM1Xihyj4mT9OyRW0OvyU=
X-Received: by 2002:a05:6871:250c:b0:288:aad0:b098 with SMTP id
 586e51a60fabf-288aad0b2a3mr2635253fac.46.1728982840464; Tue, 15 Oct 2024
 02:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <20241014135210.224913-1-linux.amoon@gmail.com>
 <20241014135210.224913-3-linux.amoon@gmail.com> <20241015051141.g6fh222zrkvnn4l6@thinkpad>
In-Reply-To: <20241015051141.g6fh222zrkvnn4l6@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 15 Oct 2024 14:30:23 +0530
Message-ID: <CANAwSgSEkFtY6-i3TOPZbwB5EuD4BHboh_jsTwByQw7NLLrstQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20241015_020043_204405_039CFC82 
X-CRM114-Status: GOOD (  22.07  )
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

SGkgTWFuaXZhbm5hbiwKClRoYW5rcyBmb3IgeW91ciByZXZpZXcgY29tbWVudHMuCgpPbiBUdWUs
IDE1IE9jdCAyMDI0IGF0IDEwOjQxLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0KPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIE1vbiwgT2N0IDE0LCAyMDI0IGF0
IDA3OjIyOjAzUE0gKzA1MzAsIEFuYW5kIE1vb24gd3JvdGU6Cj4gPiBSZWZhY3RvciB0aGUgcmVz
ZXQgY29udHJvbCBoYW5kbGluZyBpbiB0aGUgUm9ja2NoaXAgUENJZSBkcml2ZXIsCj4gPiBpbnRy
b2R1Y2UgYSBtb3JlIHJvYnVzdCBhbmQgZWZmaWNpZW50IG1ldGhvZCBmb3IgYXNzZXJ0IGFuZAo+
ID4gZGVhc3NlcnQgcmVzZXQgY29udHJvbGxlciB1c2luZyByZXNldF9jb250cm9sX2J1bGsqKCkg
QVBJLiBVc2luZyB0aGUKPiA+IHJlc2V0X2NvbnRyb2xfYnVsayBBUElzLCB0aGUgcmVzZXQgaGFu
ZGxpbmcgZm9yIHRoZSBjb3JlIGNsb2NrcyByZXNldAo+ID4gdW5pdCBiZWNvbWVzIG11Y2ggc2lt
cGxlci4KPiA+Cj4gPiBTcGlsdCB0aGUgcmVzZXQgY29udHJvbGxlciBpbiB0d28gZ3JvdXBzIGFz
IHBlciB0aGUKPiA+ICBSSzMzOTkgVE0gIDE3LjUuOC4xIFBDSWUgSW5pdGlhbGl6YXRpb24gU2Vx
dWVuY2UKPiA+ICAgICAxNy41LjguMS4xIFBDSWUgYXMgUm9vdCBDb21wbGV4Lgo+ID4KPiA+IDYu
IERlLWFzc2VydCB0aGUgUElQRV9SRVNFVF9OL01HTVRfU1RJQ0tZX1JFU0VUX04vTUdNVF9SRVNF
VF9OL1JFU0VUX04KPiA+ICAgIHNpbXVsdGFuZW91c2x5Lgo+ID4KPgo+IEknZCByZXdvcmQgaXQg
c2xpZ2h0bHk6Cj4KPiBGb2xsb3dpbmcgdGhlIHJlY29tbWVuZGF0aW9ucyBpbiAnUm9ja2NoaXAg
UkszMzk5IFRSTSB2MS4zIFBhcnQyJzoKPgo+IDEuIFNwbGl0IHRoZSByZXNldCBjb250cm9scyBp
bnRvIHR3byBncm91cHMgYXMgcGVyIHNlY3Rpb24gJzE3LjUuOC4xLjEgUENJZQo+IGFzIFJvb3Qg
Q29tcGxleCcuCj4KPiAyLiBEZWFzc2VydCB0aGUgJ1BpcGUsIE1HTVQgU3RpY2t5LCBNR01ULCBD
b3JlJyByZXNldHMgaW4gZ3JvdXBzIGFzIHBlciBzZWN0aW9uCj4gJzE3LjUuOC4xLjEgUENJZSBh
cyBSb290IENvbXBsZXgnLiBUaGlzIGlzIGFjY29tcGxpc2hlZCB1c2luZyB0aGUKPiByZXNldF9j
b250cm9sX2J1bGsgQVBJcy4KPgo+ID4gLSBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVsa19nZXRfZXhj
bHVzaXZlKCk6IEFsbG93cyB0aGUgZHJpdmVyIHRvIGdldCBhbGwKPiA+ICAgcmVzZXRzIGRlZmlu
ZWQgaW4gdGhlIERUIHRoZXJlYnkgcmVtb3ZpbmcgdGhlIGhhcmRjb2RlZCByZXNldCBuYW1lcwo+
ID4gICBpbiB0aGUgZHJpdmVyLgo+ID4gLSByZXNldF9jb250cm9sX2J1bGtfYXNzZXJ0KCk6IEFs
bG93cyB0aGUgZHJpdmVyIHRvIGFzc2VydCB0aGUgcmVzZXRzCj4gPiAgIGRlZmluZWQgaW4gdGhl
IGRyaXZlci4KPiA+IC0gcmVzZXRfY29udHJvbF9idWxrX2RlYXNzZXJ0KCk6IEFsbG93cyB0aGUg
ZHJpdmVyIHRvIGRlYXNzZXJ0IHRoZSByZXNldHMKPiA+ICAgZGVmaW5lZCBpbiB0aGUgZHJpdmVy
Lgo+ID4KPgo+IE5vIG5lZWQgdG8gbGlzdCBvdXQgdGhlIEFQSXMuIEp1c3QgYWRkIHRoZW0gdG8g
dGhlIGZpcnN0IHBhcmFncmFwaCBpdHNlbGYgdG8KPiBleHBsYWluIGhvdyB0aGV5IGFyZSB1c2Vk
Lgo+CgpIZXJlIGlzIGEgc2hvcnQgdmVyc2lvbiBvZiB0aGUgY29tbWl0IG1lc3NhZ2UuCgpJbnRy
b2R1Y2UgYSBtb3JlIHJvYnVzdCBhbmQgZWZmaWNpZW50IG1ldGhvZCBmb3IgYXNzZXJ0IGFuZCBk
ZWFzc2VydAp0aGUgcmVzZXQgY29udHJvbGxlciB1c2luZyB0aGUgcmVzZXRfY29udHJvbF9idWxr
KigpIEFQSS4KU2ltcGxpZnkgcmVzZXQgaGFuZGxpbmcgZm9yIHRoZSBjb3JlIGNsb2NrcyByZXNl
dCB1bml0IHdpdGggdGhlCnJlc2V0X2NvbnRyb2xfYnVsayBBUElzLgoKZGV2bV9yZXNldF9jb250
cm9sX2J1bGtfZ2V0X2V4Y2x1c2l2ZSgpOiBPYnRhaW4gYWxsIHJlc2V0cyBmcm9tIHRoZQogICAg
ICAgICAgICBkZXZpY2UgdHJlZSwgcmVtb3ZpbmcgaGFyZGNvZGVkIG5hbWVzLgpyZXNldF9jb250
cm9sX2J1bGtfYXNzZXJ0KCk6IGFzc2VydCB0aGUgcmVzZXRzIGRlZmluZWQgaW4gdGhlIGRyaXZl
ci4KcmVzZXRfY29udHJvbF9idWxrX2RlYXNzZXJ0KCk6IGRlYXNzZXJ0IHRoZSByZXNldHMgZGVm
aW5lZCBpbiB0aGUgZHJpdmVyLi4KCkZvbGxvd2luZyB0aGUgcmVjb21tZW5kYXRpb25zIGluICdS
b2NrY2hpcCBSSzMzOTkgVFJNIHYxLjMgUGFydDInOgoKMS4gU3BsaXQgdGhlIHJlc2V0IGNvbnRy
b2xzIGludG8gdHdvIGdyb3VwcyBhcyBwZXIgc2VjdGlvbiAnMTcuNS44LjEuMSBQQ0llCmFzIFJv
b3QgQ29tcGxleCcuCgoyLiBEZWFzc2VydCB0aGUgJ1BpcGUsIE1HTVQgU3RpY2t5LCBNR01ULCBD
b3JlJyByZXNldHMgaW4gZ3JvdXBzIGFzIHBlciBzZWN0aW9uCicxNy41LjguMS4xIFBDSWUgYXMg
Um9vdCBDb21wbGV4Jy4gVGhpcyBpcyBhY2NvbXBsaXNoZWQgdXNpbmcgdGhlCnJlc2V0X2NvbnRy
b2xfYnVsayBBUElzLgoKRG9lcyB0aGlzIGxvb2sgZ29vZCB0byB5b3U/IExldCBtZSBrbm93IGlm
IHlvdSBuZWVkIGFueSBmdXJ0aGVyIGFkanVzdG1lbnRzIQoKSSB3aWxsIGZpeCB0aGlzIGZvciBD
TEsgYnVsayBhcyB3ZWxsLgoKPiA+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1vb24gPGxpbnV4LmFt
b29uQGdtYWlsLmNvbT4KPgo+IFNvbWUgbml0cGlja3MgYmVsb3cuIFJlc3QgbG9va3MgZ29vZC4K
Ckkgd2lsbCBmaXggdGhlc2UgaW4gdGhlIG5leHQgdmVyc2lvbi4KCj4gLSBNYW5pCj4KPiAtLQo+
IOCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KClRo
YW5rcwotQW5hbmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
