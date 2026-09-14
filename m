Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 069D9C88E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2026 13:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHDPRbzrd1RZyUHFjj6MUvHGXqz8kGb26XxBCcnfGCU=; b=49/81YCQgUtSzl
	KdEqVakoo8DQ7gLHrPLpPsJJ5YnGifotapurx7bOsqLvGaiFOX7y4/GHhnBLOyx8L9xD5+4EyXz6z
	6/pv5h0HpdsEobDgn6BkAs6Tca5ZCkQGETSCjJOiCoMRyEsEwySLyL48MDcajyF0P+80G88miTYxX
	zVb4ZbkM1MjKTYplpNjbFLSrfJ7IXdyYo3+E5QeF4ik9JCwaS1VKrzOTdDefI3foW6CBIpnSwacLj
	NedophyIDXso5hm7Eh2LFwQxcb1pk9jNSCUVYgVm81GB2XajCJOI3baM92wDJ1ptLiH29ivZWpaI0
	vTK7n0atazLbfH1wv79A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x66q0-00000003n4c-2FF9;
	Mon, 14 Sep 2026 13:35:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x66py-00000003n2N-3jpe;
	Mon, 14 Sep 2026 13:35:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4F39D43903;
	Mon, 14 Sep 2026 13:35:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 23F4EC2BCFA;
	Mon, 14 Sep 2026 13:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789392910;
	bh=SkfaGXmQEY5xHBDu4QnDfNDV0wqVF01smR5fjT/K4uc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=LLqDDLlrULmcvs6aYTI19vZaNm15qYtWstADfX02PkphnDL8W2nTDX3C3LRH9xUH3
	 LlM/Q7rXou9aqPMmcoW6s1B3dpfb7qriwXWxvDk91R03fjbD9hTEJHmYebivb6eaRs
	 g69GW+DuM6XL4/m1W+y+fruAGbs9ON163U+ZoGWIetqUXIJhFS1ay9c1LxwXqtUuFq
	 ChJFphmUMix4xrnLQp+aWm+Mq4cNnqcyJkoR8rZBmu4uVfdA+dWnpY0K1VRKFhj50n
	 O9mOXpj1VOgKFZs7OG+Q5qxW22RGF/BOQ3EBtvn3EWUgq6/KZl/71iBpT0WLIbMt31
	 y9r3dSdGOcyzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2A7CC88E70;
	Mon, 14 Sep 2026 13:35:09 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Date: Mon, 14 Sep 2026 21:35:01 +0800
Subject: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi
 R28S
MIME-Version: 1.0
Message-Id: <20260914-r28s-upstream-v6-1-ea9edd75c126@proton.me>
References: <20260914-r28s-upstream-v6-0-ea9edd75c126@proton.me>
In-Reply-To: <20260914-r28s-upstream-v6-0-ea9edd75c126@proton.me>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>, 
 jensen <jensenhuang@friendlyarm.com>, 
 Andrey Korshunov <razor1702@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1524;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=ukrn4M7rYY+NNZWj9jv6eu5CXunQ4mtIC9zTzcL2LVQ=;
 b=owGbwMvMwCUmepz3XUtTHjvjabUkhqzlP3ikwhaf+PBurlFc2vzoaGZHoR0X+JzOfzVMiy80t
 7qSFLKto5SFQYyLQVZMkUV2U3Wk0KromUUsUsdh5rAygQxh4OIUgIncOsjwP3o7+90Irp9fmBwr
 rpdKWN55uTlaxqxFYKLZq+lTrx5vNmb4n8DkmH93sv6WTDEuj6u6lX3luz/9Ytu0zmXCjpP/dB0
 O8AIA
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

RnJvbTog5a6J5a65IDxIeXN0ZXJpY2FsRHJhZ29uc0Bwcm90b24ubWU+CgpUaGUgTmFub1BpIFIy
OFMgaXMgYSBkdWFsIGdpZ2FiaXQgRXRoZXJuZXQgcm91dGVyIGJvYXJkIGJhc2VkIG9uIHRoZQpS
b2NrY2hpcCBSSzM1MjggU29DLiBJdCBzaGFyZXMgaXRzIGJhc2UgZGV2aWNldHJlZSB3aXRoIHRo
ZSBOYW5vUGkKWmVybzIsIHNvIGxpc3QgYm90aCBib2FyZHMgaW4gYSBzaW5nbGUgZW50cnkuCgpB
Y2tlZC1ieTogQ29ub3IgRG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4KU2lnbmVk
LW9mZi1ieTog5a6J5a65IDxIeXN0ZXJpY2FsRHJhZ29uc0Bwcm90b24ubWU+Ci0tLQogRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgMTIgKysrKysr
Ky0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2No
aXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAu
eWFtbAppbmRleCA4MTc0NGZiZWU5Li5kYzA0OTQ2ZGIwIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCkBAIC0zNDcsNiArMzQ3
LDEzIEBAIHByb3BlcnRpZXM6CiAgICAgICAgICAgICAgIC0gZnJpZW5kbHlhcm0sbmFub3BpLXIy
cy1wbHVzCiAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMzI4CiAKKyAgICAgIC0gZGVz
Y3JpcHRpb246IEZyaWVuZGx5RWxlYyBOYW5vUGkgUjI4Uy9aZXJvMgorICAgICAgICBpdGVtczoK
KyAgICAgICAgICAtIGVudW06CisgICAgICAgICAgICAgIC0gZnJpZW5kbHlhcm0sbmFub3BpLXIy
OHMKKyAgICAgICAgICAgICAgLSBmcmllbmRseWFybSxuYW5vcGktemVybzIKKyAgICAgICAgICAt
IGNvbnN0OiByb2NrY2hpcCxyazM1MjgKKwogICAgICAgLSBkZXNjcmlwdGlvbjogRnJpZW5kbHlF
bGVjIE5hbm9QaSBSM1MKICAgICAgICAgaXRlbXM6CiAgICAgICAgICAgLSBjb25zdDogZnJpZW5k
bHlhcm0sbmFub3BpLXIzcwpAQCAtMzg4LDExICszOTUsNiBAQCBwcm9wZXJ0aWVzOgogICAgICAg
ICAgIC0gY29uc3Q6IGZyaWVuZGx5YXJtLG5hbm9waS1yNzZzCiAgICAgICAgICAgLSBjb25zdDog
cm9ja2NoaXAscmszNTc2CiAKLSAgICAgIC0gZGVzY3JpcHRpb246IEZyaWVuZGx5RWxlYyBOYW5v
UGkgWmVybzIKLSAgICAgICAgaXRlbXM6Ci0gICAgICAgICAgLSBjb25zdDogZnJpZW5kbHlhcm0s
bmFub3BpLXplcm8yCi0gICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTI4Ci0KICAgICAg
IC0gZGVzY3JpcHRpb246IEZyaWVuZGx5RWxlYyBOYW5vUEMgVDYgc2VyaWVzIGJvYXJkcwogICAg
ICAgICBpdGVtczoKICAgICAgICAgICAtIGVudW06CgotLSAKMi41NS4wCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
