Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C719C79FB6
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 14:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/wEzagVIbncrOJPWZoFiyBQ5j44VTO11/7sBkzznSQA=; b=223KwgojC0rbyH
	2uTkvUGqrZuHToniMu/boy2YsMSdhpWIt10H0LKQLAR+JSsoW5B09vj6Bv+4WABz8WYgB94B7Ch4+
	4iEaSdyN+Yd6+jWvU5kTJFWjYU6RRcrwT+MBRAKUkKBzEgtfZYGSWnG2uBBHaDFFx/yr+RKrHds1X
	uSVC/DkI6LWORlReezVhlZlrCA12bKzjBr3UMErzJ0o322kqKooK/WN3dSzBsCm2FhkPo32KQKftu
	WZmr8EICeoAeuPnBvgNnHVUmQM/A8Q7lJGF5aCu+781oXsZjghhYX6CT7vicCsrJIbai81zMEt+GF
	xUfztZutH5/EFiXqWmJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4JN7-0000000BzIg-2fkS;
	Wed, 09 Sep 2026 14:33:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4JN5-0000000BzHV-3RmF;
	Wed, 09 Sep 2026 14:33:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 84210429C1;
	Wed,  9 Sep 2026 14:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 56303C2BCB9;
	Wed,  9 Sep 2026 14:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788964435;
	bh=M+gdn9bgR3lkxhAgqB4Nv6rYR7CI1y4judKjqeu65wo=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=e1f8e/mkEyV6YiCjDfykVQzc9Wb30usUctCmM9ykk/fYbpn2ACe2UEURX3FHVSnYv
	 FT5Ysy4rZfkV00xLaYkukkBzD7jgIW+fF8mq0MpJPST7Z0durNSftz1xhjNMDiXCos
	 4S33Yeey1bRqTCxTJKGQ7hcdmBl5t7e/vosLUzFi/NydugVxQLyY4wArqovr1VBNzT
	 5vELIQJ9eA1tApmkW0DNRTtGikr4qGEudUBQmU7ft2QDGa/FzMhzFVpaaQc9iGl2oq
	 P9eqFr20Lfxwx+tECCF0USKa6N/D6UOrcB3gnNDpWEG3ba3+NXjjvHWM0drN1IagUg
	 H5Ic+7uMsY5cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F486C79FBB;
	Wed,  9 Sep 2026 14:33:55 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Subject: [PATCH v3 0/5] arm64: dts: rockchip: Add FriendlyElec NanoPi R28S
Date: Wed, 09 Sep 2026 22:33:21 +0800
Message-Id: <20260909-r28s-upstream-v3-0-ee3e1a34a353@proton.me>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3WNywrDIBQFfyW4rkVv0MSu+h+lC2NuGgt5oEZaQ
 v69mm5CocuBM3NW4tFZ9ORSrMRhtN5OY4LyVBDT6/GB1LaJCTCQTDFBHdSeLrMPDvVAETggVK3
 kUpDkzA47+9p7t/uX/dI80YQcyYve+jC5934Yed79a0dOGe1k3YqyViCVvs5uCtN4HpDkdoSjX
 f3akGzguhEV64zi5mhv2/YBUZ16QfoAAAA=
X-Change-ID: 20260905-r28s-upstream-e212e27d6165
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Chukun Pan <amadeus@jmu.edu.cn>, jensen <jensenhuang@friendlyarm.com>, 
 Andrey Korshunov <razor1702@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4356;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=M+gdn9bgR3lkxhAgqB4Nv6rYR7CI1y4judKjqeu65wo=;
 b=owGbwMvMwCUmepz3XUtTHjvjabUkhqyFeYGXhcq49d7uvXL2/wbHIyzvVkgmfg4q01wSzuh9Q
 v7m9949HaUsDGJcDLJiiiyym6ojhVZFzyxikToOM4eVCWQIAxenAEzk7wtGhgdzOZuO6rmKdR3c
 daV92mfW8pT0PxYf9ny/2/ZUoO5nQDPD/3D79RMUTSYs/OK5JTJpot6VlEVqspxnV5hdvFwqHvN
 OjxkA
X-Developer-Key: i=HystericalDragons@proton.me; a=openpgp;
 fpr=1DB27B5912AA5B9972041AC715C70DEE84826E07
X-Endpoint-Received: by B4 Relay for HystericalDragons@proton.me/default
 with auth_id=1004
X-Original-From: =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
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
Reply-To: HystericalDragons@proton.me
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIE5hbm9QaSBSMjhTIGlzIGEgZHVhbCBnaWdhYml0IEV0aGVybmV0IHJvdXRlciBib2FyZCBi
YXNlZCBvbiB0aGUKUm9ja2NoaXAgUkszNTI4IFNvQzoKCiAgaHR0cHM6Ly93aWtpLmZyaWVuZGx5
ZWxlYy5jb20vd2lraS9pbmRleC5waHAvTmFub1BpX1IyOFMKCkl0IGlzIGNsb3NlbHkgcmVsYXRl
ZCB0byB0aGUgYWxyZWFkeSBzdXBwb3J0ZWQgTmFub1BpIFplcm8yLCBzaGFyaW5nCm1vc3Qgb2Yg
aXRzIHBvd2VyIHRyZWUgYW5kIHBlcmlwaGVyYWwgcm91dGluZy4gUGF0Y2ggMyB0aGVyZWZvcmUg
bW92ZXMKdGhlIGNvbW1vbiBwYXJ0cyBpbnRvIHJrMzUyOC1uYW5vcGkuZHRzaSwgYW5kIHBhdGNo
IDQgYWRkcyB0aGUgYm9hcmQgb24KdG9wIG9mIGl0LiBUaGUgc3BsaXQgbGVhdmVzIHRoZSBOYW5v
UGkgWmVybzIgZHRiIHVuY2hhbmdlZDsgSSB2ZXJpZmllZAp0aGlzIGJ5IGRlY29tcGlsaW5nIHRo
ZSBkdGIgYmVmb3JlIGFuZCBhZnRlciB0aGUgc3BsaXQgYW5kIGNvbXBhcmluZwp0aGVtIHdpdGgg
dGhlIHBoYW5kbGUgbnVtYmVyaW5nIG5vcm1hbGlzZWQuCgpQYXRjaCAxIGZpeGVzIHRoZSBOYW5v
UGkgWmVybzIgYW5kIGNvbWVzIGZpcnN0IHNvIHRoYXQgaXQgY2FuIGJlCmJhY2twb3J0ZWQgb24g
aXRzIG93bi4gSXRzIFJHTUlJIFBIWSByZXNldCBpcyBkZXNjcmliZWQgaW4gdGhlIFBIWQpub2Rl
LCB3aGVyZSB0aGUgTURJTyBjb3JlIGFwcGxpZXMgaXQgb25seSBhZnRlciBpdCBoYXMgYWxyZWFk
eSByZWFkIHRoZQpQSFkgSUQgb3ZlciB0aGUgYnVzLCBzbyBhIFBIWSB0aGF0IHRoZSBib290bG9h
ZGVyIGxlZnQgaW4gcmVzZXQgaXMKbmV2ZXIgZm91bmQuIERlc2NyaWJpbmcgdGhlIHJlc2V0IG9u
IHRoZSBNRElPIGJ1cyBpbnN0ZWFkIG1ha2VzIGl0CmhhcHBlbiBiZWZvcmUgYW55IGRldmljZSBv
biB0aGUgYnVzIGlzIHJlZ2lzdGVyZWQuIFRoZSBSMjhTIHdpcmVzIHRoZQpzYW1lIG5ldCBhbmQg
aW5oZXJpdHMgdGhlIGZpeCB0aHJvdWdoIHRoZSBkdHNpLiBQYXRjaCA1IGlzIGEgY29kaW5nCnN0
eWxlIGNsZWFudXAgYWNyb3NzIHRoZSB0aHJlZSBOYW5vUGkgUkszNTI4IGRldmljZXRyZWVzLgoK
VGhlIGRldmljZXRyZWUgd2FzIGRlcml2ZWQgZnJvbSB0aGUgdmVuZG9yIHRyZWU6CgogIGh0dHBz
Oi8vZ2l0aHViLmNvbS9mcmllbmRseWFybS9rZXJuZWwtcm9ja2NoaXAvY29tbWl0L2VlNjQwYzUz
NDRiMTNhMGEzMTc0MzZlMjM1N2RmMDFhZjgyNjhjZTcKCmJ1dCB3aXRoIG1hbnkgY2hhbmdlcyB0
byBtYWtlIGl0IHN1aXRhYmxlIGZvciBtYWlubGluZS4KClRlc3RlZCBvbiBhIG1ldGFsLWNhc2Ug
dW5pdCB3aXRob3V0IHRoZSBvcHRpb25hbCBvbmJvYXJkIGVNTUM6IGJvb3RzCmZyb20gbWljcm9T
RCwgYm90aCBFdGhlcm5ldCBwb3J0cyBsaW5rIHVwIGF0IDEwMDAgTWJwcywgdGhlIEhZTTg1NjMg
UlRDCnJlZ2lzdGVycywgYW5kIGFsbCB0aHJlZSBMRURzIGFyZSBmdW5jdGlvbmFsLiBUaGUgVVNC
IFR5cGUtQyBjb25uZWN0b3IKcmVnaXN0ZXJzIGFzIGEgRFdDMyBVREMgaW4gcGVyaXBoZXJhbCBt
b2RlOyBnYWRnZXQgZW51bWVyYXRpb24gYWdhaW5zdAphIFVTQiBob3N0IHdhcyBub3QgY29tcGxl
dGVkLCBiZWNhdXNlIHRoYXQgY29ubmVjdG9yIGlzIGFsc28gdGhlIDVWCmlucHV0IGFuZCBhIFBD
IHBvcnQgY2Fubm90IHBvd2VyIHRoZSBib2FyZC4KClR3byB0aGluZ3MgSSBkaWQgbm90IGRvLCBi
ZWNhdXNlIG15IGhhcmR3YXJlIGNhbm5vdCB2ZXJpZnkgdGhlbToKCi0gVGhlIEFJQ1NlbWkgQUlD
ODgwMEQ4MCBXaUZpIGNoaXAgb24gc2RpbzAgaGFzIG5vIHVwc3RyZWFtIGRyaXZlciwgc28KICBv
bmx5IHRoZSBTRElPIGNvbnRyb2xsZXIgaXMgZGVzY3JpYmVkLgotIFRoZSBlTU1DIGlzIGRlc2Ny
aWJlZCBhcyBIUzIwMCByYXRoZXIgdGhhbiB0aGUgdmVuZG9yJ3MgSFM0MDAgd2l0aAogIGVuaGFu
Y2VkIHN0cm9iZSwgc2luY2UgdGhlIGJvYXJkIGF0IGhhbmQgaGFzIGFuIHVucG9wdWxhdGVkIGVN
TUMKICBmb290cHJpbnQgYW5kIHRoZSBmYXN0ZXIgbW9kZXMgY291bGQgbm90IGJlIHZlcmlmaWVk
LgoKLS0tCkNoYW5nZXMgaW4gdjM6Ci0gTmV3IHBhdGNoIDE6IGRlc2NyaWJlIHRoZSBOYW5vUGkg
WmVybzIgUkdNSUkgUEhZIHJlc2V0IG9uIHRoZSBNRElPCiAgYnVzIHJhdGhlciB0aGFuIGluIHRo
ZSBQSFkgbm9kZSwgc28gdGhhdCBpdCBpcyBhcHBsaWVkIGJlZm9yZSB0aGUgUEhZCiAgSUQgaXMg
cmVhZC4gQSBQSFkgaGVsZCBpbiByZXNldCBieSB0aGUgYm9vdGxvYWRlciB3YXMgb3RoZXJ3aXNl
IG5ldmVyCiAgcHJvYmVkLCBsZWF2aW5nIHRoZSBwb3J0IGRlYWQuIFJlcG9ydGVkIGJ5IEFuZHJl
eSBLb3JzaHVub3YsIHdobwogIHByb3Bvc2VkIHRoZSBkZXByZWNhdGVkIHNucHMscmVzZXQtZ3Bp
byBwcm9wZXJ0aWVzIG9uIHRoZSBNQUM7IHRoZQogIGJ1cyBsZXZlbCByZXNldC1ncGlvcyBpbiBt
ZGlvLnlhbWwgZml4ZXMgdGhlIHNhbWUgb3JkZXJpbmcgd2l0aG91dCBhCiAgZGVwcmVjYXRlZCBw
cm9wZXJ0eS4KLSBOZXcgcGF0Y2ggNTogZm9sbG93IHRoZSBEVFMgY29kaW5nIHN0eWxlIGluIHRo
ZSB0aHJlZSBOYW5vUGkgUkszNTI4CiAgZGV2aWNldHJlZXMsIGFzIGZvdW5kIGJ5IHNjcmlwdHMv
ZHRjL2R0LWNoZWNrLXN0eWxlIC0tbW9kZT1zdHJpY3Q6CiAgcGluY3RybC0wIGJlZm9yZSBwaW5j
dHJsLW5hbWVzLCBhbmQgYSBibGFuayBsaW5lIGJlZm9yZSBzdGF0dXMuCiAgU3VnZ2VzdGVkIGJ5
IERpZWRlcmlrIGRlIEhhYXMuCi0gUGlja2VkIHVwIENvbm9yIERvb2xleSdzIEFja2VkLWJ5IG9u
IHRoZSBiaW5kaW5nLgotIExpbmsgdG8gdjI6IGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8yMDI2
MDkwNy1yMjhzLXVwc3RyZWFtLXYyLTAtMjFhYjU3MGZjOTFjQHByb3Rvbi5tZQoKQ2hhbmdlcyBp
biB2MjoKLSBTcGxpdCB0aGUgcGFydHMgc2hhcmVkIHdpdGggdGhlIE5hbm9QaSBaZXJvMiBpbnRv
IGEgbmV3CiAgcmszNTI4LW5hbm9waS5kdHNpIChuZXcgcGF0Y2ggMikuIFRoZSBOYW5vUGkgWmVy
bzIgZHRiIGlzIHVuY2hhbmdlZC4KLSBOYW1lIHRoZSBwaW5jdHJsIGxhYmVscyBhZnRlciB0aGUg
bmV0cyBpbiB0aGUgc2NoZW1hdGljOiB1c3JfYnRuLAogIGxlZDEsIGxlZDIsIGxlZF9zeXMsIHB3
cl93ZiBhbmQgcGNpZV9ldGhfcGVyc3RiLgotIFJlbmFtZSB0aGUgYnV0dG9uIG5vZGUgdG8gYnV0
dG9uLXVzZXIgYW5kIGl0cyBsYWJlbCB0byAiVVNFUiIuCi0gTGluayB0byB2MTogaHR0cHM6Ly9w
YXRjaC5tc2dpZC5saW5rLzIwMjYwOTA1LXIyOHMtdXBzdHJlYW0tdjEtMC1mNjhkNTM4OTI2OWFA
cHJvdG9uLm1lCgotLS0K5a6J5a65ICg1KToKICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IFJl
c2V0IHRoZSBOYW5vUGkgWmVybzIgUEhZIGZyb20gdGhlIE1ESU8gYnVzCiAgICAgIGR0LWJpbmRp
bmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgRnJpZW5kbHlFbGVjIE5hbm9QaSBSMjhTCiAgICAgIGFy
bTY0OiBkdHM6IHJvY2tjaGlwOiBTcGxpdCBvdXQgdGhlIGNvbW1vbiBOYW5vUGkgUkszNTI4IHBh
cnRzCiAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZGV2aWNldHJlZSBmb3IgdGhlIEZy
aWVuZGx5RWxlYyBOYW5vUGkgUjI4UwogICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogRm9sbG93
IHRoZSBEVFMgY29kaW5nIHN0eWxlIGluIHRoZSBOYW5vUGkgUkszNTI4IGRldmljZXRyZWVzCgog
Li4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgICAgICAgICAgfCAgIDUg
KwogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgICAgICAgfCAg
IDEgKwogLi4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGktcjI4cy5kdHMg
fCAxNDUgKysrKysrKysrKysKIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3BpLXpl
cm8yLmR0cyAgICAgIHwgMjc0ICstLS0tLS0tLS0tLS0tLS0tLS0tCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGkuZHRzaSAgICB8IDI4OCArKysrKysrKysrKysrKysr
KysrKysKIDUgZmlsZXMgY2hhbmdlZCwgNDQyIGluc2VydGlvbnMoKyksIDI3MSBkZWxldGlvbnMo
LSkKLS0tCmJhc2UtY29tbWl0OiAzMmUwZjY0NjQwZDU1OGEwZjU0MTBhYzVjZGQ4ZWJmMzcxYzVl
NmE2CmNoYW5nZS1pZDogMjAyNjA5MDUtcjI4cy11cHN0cmVhbS1lMjEyZTI3ZDYxNjUKCkJlc3Qg
cmVnYXJkcywKLS0gIArlronlrrkgPEh5c3RlcmljYWxEcmFnb25zQHByb3Rvbi5tZT4KCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
