Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13D55C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 16:12:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C2CDD2245C
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 16:12:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C2CDD2245C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I3wpt3BpARZLnEpW6FmVNDJgMwoF9RdzgrQ7Kd+pohk=; b=sCQ8ybGiCjj9vWRfzl71QS4phI
	Bcp142eaKVLaP85QB0hS1s3t45mmUHYkE+FqraTHJakbrkg0K/sZWOX/r7SHflfuk/IHrLF4a172N
	YmJ35SaMe0GGzX6n69XU0C0Ved1NCOaMwAv9R5eOsM6rbPkdddeOVpPfgqxgVKub0TRndh58HB1dW
	WYALjQ4LGC8pynKNT6jv+w/uX9+CCwrmfUnKkHlXGZDAaN/cO8HdmqTJRFqAcRIA96WOkfczuIuqX
	724Kzk4hXrHsZphcl6R2bKxuaFY2JWpTMCOIlfN1K5yr9QTHSplLOIUgBpUVchLLF3lOFtZsOpniF
	6QLW9AgQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1tcZ-0000kb-OX; Tue, 19 Jan 2021 16:12:43 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1tcU-0000iK-Iu; Tue, 19 Jan 2021 16:12:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 31B8E2507D;
 Tue, 19 Jan 2021 16:12:36 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo06-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo06-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jj9WNVIByI26; Tue, 19 Jan 2021 16:12:35 +0000 (UTC)
Received: from localhost.localdomain (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id CE5382502E;
 Tue, 19 Jan 2021 16:12:18 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: tpiepho@gmail.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, robin.murphy@arm.com, lee.jones@linaro.org,
 heiko@sntech.de, bbrezillon@kernel.org, david.wu@rock-chips.com,
 steven.liu@rock-chips.com, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 0/5] pwm: rockchip: Eliminate potential race condition when
 probing
Date: Tue, 19 Jan 2021 11:12:04 -0500
Message-Id: <cover.1610976129.git.simon@simonsouth.net>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_111238_627560_DE322321 
X-CRM114-Status: GOOD (  17.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: simon@simonsouth.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhpcyBwYXRjaCBzZXJpZXMgZWxpbWluYXRlcyB0aGUgcmFjZSBjb25kaXRpb24gVHJlbnQgUGll
cGhvCmlkZW50aWZpZWRbMF0gaW4gdGhlIFJvY2tjaGlwIFBXTSBkcml2ZXIncyByb2NrY2hpcF9w
d21fcHJvYmUoKQpmdW5jdGlvbiwgYnkgbW92aW5nIGNvZGUgdGhhdCBjaGVja3Mgd2hldGhlciBh
IGRldmljZSBpcyBlbmFibGVkIGFoZWFkCm9mIHRoZSBjb2RlIHRoYXQgcmVnaXN0ZXJzIGl0IHZp
YSBwd21jaGlwX2FkZCgpLgoKSXQgaW5jbHVkZXMgc2V2ZXJhbCBvdGhlciBzbWFsbCBmaXhlcyBh
bmQgaW1wcm92ZW1lbnRzIHRvIHRoZSBkcml2ZXIKYXMgd2VsbDogSXQgYWxzbwoKLSBGaXhlcyBh
IHBvdGVudGlhbCBrZXJuZWwgaGFuZyBpbnRyb2R1Y2VkIGJ5IG15IGVhcmxpZXIgY29tbWl0CiAg
NDU3Zjc0YWJiZWQwICgicHdtOiByb2NrY2hpcDogS2VlcCBlbmFibGVkIFBXTXMgcnVubmluZyB3
aGlsZQogIHByb2JpbmciKSBieSBlbnN1cmluZyBhIGRldmljZSdzIEFQQiBjbG9jayBpcyBlbmFi
bGVkIGJlZm9yZSBpdHMKICByZWdpc3RlcnMgYXJlIGFjY2Vzc2VkOwoKLSBSZW1vdmVzIGEgc3Vw
ZXJmbHVvdXMgY2FsbCB0byBjbGtfdW5wcmVwYXJlKCkgdGhhdCBjb3VsZCBwcm9kdWNlCiAgd2Fy
bmluZ3MgZnJvbSB0aGUga2VybmVsOwoKLSBDbGFyaWZpZXMgZXJyb3IgbWVzc2FnZXMgZnJvbSB0
aGUgZHJpdmVyIGJ5IHJlcGxhY2luZyAiYnVzIGNsayIgd2l0aAogICJQV00gY2xrIjsgYW5kCgot
IEVuc3VyZXMgdGhlIGRyaXZlciBlbmFibGVzIGEgY2xvY2sgYmVmb3JlIHF1ZXJ5aW5nIGl0cyBy
YXRlIHdpdGgKICBjbGtfZ2V0X3JhdGUoKSwgYXMgc3RhdGVkIGFzIGEgcmVxdWlyZW1lbnQgaW4g
dGhhdCBmdW5jdGlvbidzCiAgZG9jdW1lbnRhdGlvbi4KClRoaXMgdmVyc2lvbiBvZiB0aGUgc2Vy
aWVzIGluY29ycG9yYXRlcyBVd2UgS2xlaW5lLUvDtm5pZydzIGZlZWRiYWNrIG9uCnYzIGFuZCBp
bmNsdWRlcyB0aGVzZSBjaGFuZ2VzOgoKLSBQYXRjaCAxJ3MgY29tbWl0IG1lc3NhZ2UgaGFzIGJl
ZW4gZWRpdGVkIHNsaWdodGx5IHRvIGltcHJvdmUKICByZWFkYWJpbGl0eSwgYW5kIHRoZSBlcnJv
ciBtZXNzYWdlIHVwZGF0ZWQgYnkgdGhlIHBhdGNoIG5vdyByZWFkcwogICJwcmVwYXJlIGVuYWJs
ZSIgcmF0aGVyIHRoYW4ganVzdCAiZW5hYmxlIiBmb3IgY29uc2lzdGVuY3kgd2l0aCB0aGUKICBl
cnJvciBtZXNzYWdlIGFib3ZlIGl0IGluIHRoZSBjb2RlLgoKLSBQYXRjaCAzJ3MgY29tbWl0IG1l
c3NhZ2Ugbm93IG1lbnRpb25zIGNvbnNpc3RlbmN5IHdpdGggdGhlIGRldmljZQogIHRyZWUuCgot
IFBhdGNoIDQgaGFzIGJlZW4gc2ltcGxpZmllZCBhbmQgbm93IGp1c3QgbW92ZXMgdGhlIGRldmlj
ZS1lbmFibGVkCiAgY2hlY2sgYWhlYWQgb2YgdGhlIGNhbGwgdG8gcHdtY2hpcF9hZGQoKS4gSXQg
bm8gbG9uZ2VycyBjaGFuZ2VzIGFueQogIGVycm9yLWhhbmRsaW5nIGJlaGF2aW91ciwgYW5kIGFu
IGV4dHJhbmVvdXMgcGFpciBvZiBwYXJlbnRoZXNlcyBoYXMKICBiZWVuIHJlbW92ZWQuCgpQYXRj
aGVzIDIgYW5kIDUgYXJlIHVuY2hhbmdlZCBmcm9tIHYzLCB3aGlsZSB0aGUgcmVtYWluaW5nIDIg
cGF0Y2hlcwpwcmVzZW50IGluIHYzICh3aGljaCByZW1vdmVkIGdvdG8gdGFyZ2V0cyBmcm9tIGFu
ZCByZW9yZGVyZWQgc29tZQpvcGVyYXRpb25zIGluIHJvY2tjaGlwX3B3bV9wcm9iZSgpKSBoYXZl
IGJlZW4gZHJvcHBlZC4KCkkndmUgdGVzdGVkIHRoZXNlIGNoYW5nZXMgb24gbXkgUGluZWJvb2sg
UHJvIChSSzMzOTkgd2l0aCBhIFBXTS1kcml2ZW4KYmFja2xpZ2h0IGVuYWJsZWQgYnkgVS1Cb290
KSBhbmQgUk9DSzY0IChSSzMzMjgpIGFuZCB0aGV5IGFwcGVhciB0bwp3b3JrIGZpbmUuCgpbMF0g
aHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbGludXgtcHdtL21zZzE0NjExLmh0bWwKCi0t
ClNpbW9uIFNvdXRoCnNpbW9uQHNpbW9uc291dGgubmV0CgoKU2ltb24gU291dGggKDUpOgogIHB3
bTogcm9ja2NoaXA6IEVuYWJsZSBBUEIgY2xvY2sgZHVyaW5nIHJlZ2lzdGVyIGFjY2VzcyB3aGls
ZSBwcm9iaW5nCiAgcHdtOiByb2NrY2hpcDogcm9ja2NoaXBfcHdtX3Byb2JlKCk6IFJlbW92ZSBz
dXBlcmZsdW91cwogICAgY2xrX3VucHJlcGFyZSgpCiAgcHdtOiByb2NrY2hpcDogUmVwbGFjZSAi
YnVzIGNsayIgd2l0aCAiUFdNIGNsayIKICBwd206IHJvY2tjaGlwOiBFbGltaW5hdGUgcG90ZW50
aWFsIHJhY2UgY29uZGl0aW9uIHdoZW4gcHJvYmluZwogIHB3bTogcm9ja2NoaXA6IEVuYWJsZSBj
bG9jayBiZWZvcmUgY2FsbGluZyBjbGtfZ2V0X3JhdGUoKQoKIGRyaXZlcnMvcHdtL3B3bS1yb2Nr
Y2hpcC5jIHwgMzIgKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyMyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKLS0gCjIuMzAuMAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
