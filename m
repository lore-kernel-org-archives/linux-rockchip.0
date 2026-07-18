Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5D58C4451C
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyX8aupQ3MfyLrYDtHSuES9+HWB2YrEQbEDphR4c1ZA=; b=X8P3IE6eZ2hrCk
	djFo88lCjk+YSLic9S+U0fyKVXIu/NXaH9Fscj3B3y22Yz9Yfxzvjp0r5ZtUihUq52FcUUKCaT1l8
	PWCcOBocxzIMZFOV36a/Hc/ZaQCuX3LHHyj+bL2v58vqF5HzaZfsYW8Cy5e4j6PVk3KIZBwyf1WKF
	OHb8pIuapEWjKKT1Am7OOkQzolWS3BRNYQ9V9qJTyhWjXdbd6Yiol8iY+fjTOHqu5xreQNYGF62WQ
	NotEVkoQmQx1yn1dDzTj64E8stt7lMD6gItKXDfoOZmwlarCUsgMpax+w6z793L+hZVGbhou0WqeB
	2SmqOSQySk2M8qD3iLuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl2qf-000000041rR-0hdA;
	Sat, 18 Jul 2026 11:04:49 +0000
Received: from mail-yx1-xb131.google.com ([2607:f8b0:4864:20::b131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl2qc-000000041qc-0W7S
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 11:04:47 +0000
Received: by mail-yx1-xb131.google.com with SMTP id 956f58d0204a3-664b8b65192so1056225d50.0
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 04:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784372685; cv=none;
        d=google.com; s=arc-20260327;
        b=qtD1Tqx/2aBRs37dbnYE3U2WyKQxaGqsK2RDI8r4sutYawXaKcr5I3xQIhrGsy9Q3C
         8xzX1Ogh4dVQaRiUPsAIISAj+/zd7todRtQV6cDiobv0HmXr0FyJCfCJKvE12qiflbLC
         a9YMlpHLnfvrwb0itvFjXEevXM9z48Z2qqzmtUP6y0fo2VQydRXULdm87cmhuSf/4qsM
         df+18eiv7tu6BwcWbinPX8O/zREptC7ewnTHOsNKIVwLikFUHeh/M7YlN7HBo3Pl9wEP
         B6fnsfX4bq8cv7rkT13P8FcXhWre20LOzCbKg5uBu0plhagdRlLYne2hRQLZb10vAObE
         mFFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vt2l2OcHA0eMP2cNyDZEsGAIycIWGJ5grI24JGOYQmM=;
        fh=Z89o+KOovOadITHTjGhhnXabFs3TqHkPVHLV6pnQrrE=;
        b=reX+NCKIwYokhkfSpVepQ3UaAcqUWmgdsMUvCAEHrqdOzwbp5LTz7R7+Vi0PHLBHks
         pr5BVCFmlGKLzIkkUXpbSrexFhJRDKAy0Zdbh48+pY239IcyAYog6wicgFsUMJRS7nlp
         S7M+RoH8TuJT2wk0MxqR0uJ7aNbGzVD/5mYANA1RhROa4V2tqq1sThTIQ00gq/hMK3yB
         rt+61yHarfJYsQ73sAOTDAphuySO7ScbZfZsgdl6kk8nfSmmP079ekG56T5YdmGRn36n
         mosGwM2q4ERytO4R5KnlrbsdV4SPRIHvuSLPwOYvElK8tf/VPGm9+vFZVWXwM8dluaVa
         7cEA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784372685; x=1784977485; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vt2l2OcHA0eMP2cNyDZEsGAIycIWGJ5grI24JGOYQmM=;
        b=oF0X/cmmkoQb15KtQwj1RKglLEW7+5g9UEqqTY+pWt6MCTBRQlTelS/e2JgQ4hBbrE
         dCJ5cQkPUdoeTI8F35p+KdgVaEprz++nerP4wfG3VeTpD41gDGFEqChj0vy1NbiVFpB3
         RRK+BdbYL1CNnCCZlXmswY+fY+cQb6d84xMiHTMCIiWlP/PmuCI4nBJ26RUrxIDZk8WR
         TjwNaeg8E2EBqS/mZBB9HWKJ2XxX5jHpymATb47vbWLgrj5WgDpqH+DfcMe2mU9Bp6gR
         lmiVvU/ryEJu1V/JXMPFTOnE3Wv9qQMoVLZQQ8b8agoy/09e7u2VgHgNxgtq6XrQ+Si7
         WWug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784372685; x=1784977485;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vt2l2OcHA0eMP2cNyDZEsGAIycIWGJ5grI24JGOYQmM=;
        b=Mq/jwfyNbn+JFbyFNvHFpMuDTUR0pV6xeqxe9wRkyWEDGo7qoAqvvPezYkT4lx4jeX
         vNru6ch/b+WOvJP5FzbfaaSFOYq51/bZFqHwRxaycTpsgo6BgNWa6kgVYP8neDHRr8mN
         4G8b/I/l/enqY7rrim8YLt6jxHAjOKj+utQM1LcYBXRpAEMkQgzGSsjihZAN/q9iInui
         LHwVW31rQ8Y2zawLdETsu3p0y5cDs4JoPyaC0HAGIXd+2r2W+Fv7JwQjaCdfqf7iGT+E
         cgF4bUcV1ZCVstrZqBJEQWMCWTnpFyTpDw1Yy9Td0J8Zcg9oFJyO0iwKC0aKEELntjsC
         KVKA==
X-Forwarded-Encrypted: i=1; AHgh+RqndRlns9LjHDPcbfYonUvvM7Jn7ACZPy7ceGzZkJAwmffmVjLHFwRg8QM///IaE3YWNNJF8FEBl6M1wCRYEA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0/TmHvqLf781GjXCNxEpudMfxfQ7Zc3thsjjG5a2rkdKRRe/e
	RPk21KhaJn8E2lIHFofvxL7XYRDg8+8abIKPXOSs8ujzW4HduZxA6hAVkh/bUWXbCczDr6AsTkO
	UyJcOZbkVpj2mgBFMlqVwnYP2SfKJxyw=
X-Gm-Gg: AfdE7clnac3UYU2oTAOoRPAuBOj3U85MRL3o6FuKLjCe46ab2TitiLyl+Bhv2gF3C5o
	WDmgqBQgFXzS739Xfp3xOKuqpODxpDvk/pPxt128CSKufQll4AX8gIf2iLPzvhTebVMVx4g23NC
	XFU9h4zaQvCrKk2un9JObS3WVsWHu7nZfDttagzG343EMTrrPwFw4un/tIu+5BVAu+BKdlOxXqt
	Oa+RQ3K3HCg+aR1icXubT7rNFmLVYLSgoAwmY7Dz37VmjroMXeJm54MFCqoCS/CBhABDiG6Sf2F
	vqbq7JgLYPIZSGlttVNUuJAVeQ8ipw==
X-Received: by 2002:a53:b19d:0:b0:667:8db0:76a7 with SMTP id
 956f58d0204a3-6683be700d6mr1278751d50.9.1784372684813; Sat, 18 Jul 2026
 04:04:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260718085728.6797-1-royalnet026@gmail.com> <20260718085728.6797-5-royalnet026@gmail.com>
 <20260718091200.65AE21F000E9@smtp.kernel.org>
In-Reply-To: <20260718091200.65AE21F000E9@smtp.kernel.org>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Sat, 18 Jul 2026 13:04:33 +0200
X-Gm-Features: AUfX_mzv1PFiBSswpTxs5ztrtbcERZseF6OCGF3wFsdhSvoLcm5qvDBSH066Hi4
Message-ID: <CAEWPSH7CMoQB=ypHQvrV058VxpX_+Wdfthb9SJrHczVPZKqmcQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: enable HDMI RX audio capture
 on Orange Pi 5 Plus
To: sashiko-reviews@lists.linux.dev, 
	Dmitry Osipenko <dmitry.osipenko@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
	linux-kernel@vger.kernel.org
Cc: media-ci@linuxtv.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	robh@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_040446_207242_CC270D8C 
X-CRM114-Status: GOOD (  26.32  )
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

PiBEb2VzIGV4cG9zaW5nIHRoaXMgY29kZWMgdG8gdGhlIEFMU0Egc3Vic3lzdGVtIHRyaWdnZXIg
YSBzdXNwZW5kCj4gcmVncmVzc2lvbiBpbiB0aGUgaGRtaXJ4IGRyaXZlcj8KCkdvb2QgY2F0Y2gg
LS0gdGhpcyBvbmUgaXMgcmVhbC4gVGhlIGF1ZGlvIHdvcmtlciBtaXNzZWQgdGhlIHBhdHRlcm4K
dGhlIGRyaXZlciBhbHJlYWR5IGFwcGxpZXMgdG8gaXRzIGhvdHBsdWcgYW5kIHJlc19jaGFuZ2Ug
d29ya3MsCndoaWNoIGhkbWlyeF9kaXNhYmxlX2lycSgpIGNhbmNlbHMgb24gdGhlIHN1c3BlbmQg
cGF0aC4gRml4ZWQgZm9yCnY0OiBzdXNwZW5kIGNhbmNlbHMgYXVkaW9fd29yayBiZWZvcmUgdGhl
IGNvbnRyb2xsZXIgY2xvY2tzIGFyZQpnYXRlZCwgYW5kIHJlc3VtZSByZS1hcm1zIGl0IHdoZW4g
YSBjYXB0dXJlIHN0cmVhbSBpcyBhY3RpdmU7IHRoZQp3b3JrZXIncyBGSUZPIGVycm9yIHBhdGgg
dGhlbiByZXN5bmNocm9uaXplcyB0aGUgY2xvY2sgYW5kIHRoZSBGSUZPCm9uIGl0cyBmaXJzdCBy
dW4gYWZ0ZXIgcmVzdW1lLgoKPiBTaG91bGQgc3dhYjMyKCkgYmUgdXNlZCBoZXJlIGluc3RlYWQg
dG8gZW5zdXJlIHRoZSBieXRlIHN3YXAgaGFwcGVucwo+IHVuY29uZGl0aW9uYWxseSBvbiBhbGwg
YXJjaGl0ZWN0dXJlcz8KClllcyAtLSByZWFkbCgpIGFscmVhZHkgYWJzdHJhY3RzIHRoZSBidXMg
ZW5kaWFubmVzcywgc28gd2hhdCB0aGlzCmNvZGUgd2FudHMgaXMgYW4gdW5jb25kaXRpb25hbCBi
eXRlIHJldmVyc2FsLCBub3QgYW4gZW5kaWFuCmNvbnZlcnNpb24uIFN3aXRjaGVkIHRvIHN3YWIz
MigpIGZvciB2NCAobm8gZnVuY3Rpb25hbCBjaGFuZ2Ugb24KYXJtNjQsIHdoZXJlIHRoaXMgY29u
dHJvbGxlciBsaXZlcywgYnV0IHRoZSByaWdodCBwcmltaXRpdmUKcmVnYXJkbGVzcykuCgpCb3Ro
IGNoYW5nZXMgYXJlIGluIG15IHRyZWUsIGNvbXBpbGUtdGVzdGVkLCBhbmQgd2lsbCBiZSBwYXJ0
IG9mIHY0CnRvZ2V0aGVyIHdpdGggd2hhdGV2ZXIgY29tZXMgb3V0IG9mIGh1bWFuIHJldmlldyBv
ZiB0aGUgc2VyaWVzLgoKSWdvcgoKT24gU2F0LCBKdWwgMTgsIDIwMjYgYXQgMTE6MTLigK9BTSA8
c2FzaGlrby1ib3RAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgY29u
dHJpYnV0aW9uISBTYXNoaWtvIEFJIHJldmlldyBmb3VuZCAyIHBvdGVudGlhbCBpc3N1ZShzKSB0
byBjb25zaWRlcjoKPiAtIFtIaWdoXSBUaGUgYXVkaW9fd29yayBkZWxheWVkIHdvcmsgaXMgbm90
IGNhbmNlbGxlZCBkdXJpbmcgc3lzdGVtIHN1c3BlbmQsIGxlYWRpbmcgdG8gYSBmYXRhbCBidXMg
ZmF1bHQuCj4gLSBbTWVkaXVtXSBJbmNvcnJlY3QgdXNlIG9mIGJlMzJfdG9fY3B1KCkgZm9yIHVu
Y29uZGl0aW9uYWwgYnl0ZSBzd2FwcGluZyBicmVha3MgYXVkaW8gY2FwdHVyZSBvbiBiaWctZW5k
aWFuIGFyY2hpdGVjdHVyZXMuCj4gLS0KPgo+IC0tLSBQYXRjaCBbNF06IFtQQVRDSCB2MyA0LzRd
IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBlbmFibGUgSERNSSBSWCBhdWRpbyBjYXB0dXJlIG9uIE9y
YW5nZSBQaSA1IFBsdXMgLS0tCj4gY29tbWl0IDAzMGNkOGZkNTMzNGI3OWUxNzUxZGVjNTdiMWRl
MWY1ZmE0ZTNkZjMKPiBBdXRob3I6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNv
bT4KPgo+IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBlbmFibGUgSERNSSBSWCBhdWRpbyBjYXB0dXJl
IG9uIE9yYW5nZSBQaSA1IFBsdXMKPgo+IFRoaXMgcGF0Y2ggcm91dGVzIHRoZSBIRE1JIHJlY2Vp
dmVyIGF1ZGlvIHRvIHRoZSBpMnM3XzhjaCBpbnRlcmZhY2UuIEl0IGNyZWF0ZXMKPiBhIHNpbXBs
ZS1hdWRpby1jYXJkIGNvbmZpZ3VyYXRpb24gdG8gZXhwb3NlIGEgY2FwdHVyZS1vbmx5IEFMU0Eg
Y2FyZCBkcml2ZW4KPiBieSB0aGUgSERNSSBpbnB1dC4gVGhlIHNldHVwIHVzZXMgdGhlIHJlY2Vp
dmVyIGFzIHRoZSBiaXRjbG9jayBhbmQgZnJhbWUgbWFzdGVyLgo+Cj4gPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUtcGx1cy5kdHMK
PiA+IGluZGV4IDE0NTk4NjY5NTcyMGEuLjJhNjg2MTBjZGRiYzMgMTAwNjQ0Cj4gPiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzCj4g
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBs
dXMuZHRzCj4gPiBAQCAtMzcsNiArMzcsMjIgQEAgaGRtaTFfY29uX2luOiBlbmRwb2ludCB7Cj4g
PiAgICAgICAgICAgICAgIH07Cj4gPiAgICAgICB9Owo+ID4KPiA+ICsgICAgIGhkbWlpbi1zb3Vu
ZCB7Cj4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic2ltcGxlLWF1ZGlvLWNhcmQiOwo+
ID4gKyAgICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gInJvY2tjaGlwLGhkbWlp
biI7Cj4gPiArICAgICAgICAgICAgIHNpbXBsZS1hdWRpby1jYXJkLGZvcm1hdCA9ICJpMnMiOwo+
ID4gKyAgICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxiaXRjbG9jay1tYXN0ZXIgPSA8Jmhk
bWlpbl9jb2RlYz47Cj4gPiArICAgICAgICAgICAgIHNpbXBsZS1hdWRpby1jYXJkLGZyYW1lLW1h
c3RlciA9IDwmaGRtaWluX2NvZGVjPjsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgc2ltcGxlLWF1
ZGlvLWNhcmQsY3B1IHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBzb3VuZC1kYWkgPSA8Jmky
czdfOGNoPjsKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgaGRt
aWluX2NvZGVjOiBzaW1wbGUtYXVkaW8tY2FyZCxjb2RlYyB7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgc291bmQtZGFpID0gPCZoZG1pX3JlY2VpdmVyIDA+Owo+Cj4gW1NldmVyaXR5OiBIaWdo
XQo+IERvZXMgZXhwb3NpbmcgdGhpcyBjb2RlYyB0byB0aGUgQUxTQSBzdWJzeXN0ZW0gdHJpZ2dl
ciBhIHN1c3BlbmQgcmVncmVzc2lvbiBpbgo+IHRoZSBoZG1pcnggZHJpdmVyPwo+Cj4gTG9va2lu
ZyBhdCB0aGUgdW5kZXJseWluZyBjb2RlYyBkcml2ZXIgaGRtaXJ4X3N1c3BlbmQoKSBpbiBzbnBz
X2hkbWlyeC5jOgo+Cj4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zeW5vcHN5cy9oZG1pcngvc25w
c19oZG1pcnguYzpoZG1pcnhfc3VzcGVuZCgpCj4gewo+ICAgICAgICAgc3RydWN0IHNucHNfaGRt
aXJ4X2RldiAqaGRtaXJ4X2RldiA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+Cj4gICAgICAgICBo
ZG1pcnhfZGlzYWJsZV9pcnEoZGV2KTsKPgo+ICAgICAgICAgLyogVE9ETyBzdG9yZSBDRUMgSFcg
c3RhdGUgKi8KPiAgICAgICAgIGRpc2FibGVfaXJxKGhkbWlyeF9kZXYtPmNlYy0+aXJxKTsKPgo+
ICAgICAgICAgcmV0dXJuIGhkbWlyeF9kaXNhYmxlKGRldik7Cj4gfQo+Cj4gVGhlIGF1ZGlvX3dv
cmsgZGVsYXllZCB3b3JrIGlzIHF1ZXVlZCBvbiBzeXN0ZW1fdW5ib3VuZF93cSwgd2hpY2ggaXMg
bm90Cj4gZnJlZXphYmxlLCBidXQgdGhpcyBzdXNwZW5kIGNhbGxiYWNrIGRvZXNuJ3QgY2FuY2Vs
IGl0Lgo+Cj4gSWYgc3lzdGVtIHN1c3BlbmQgaXMgaW5pdGlhdGVkIHdoaWxlIGF1ZGlvIGNhcHR1
cmUgaXMgYWN0aXZlLCB0aGUgd29ya2VyCj4gY291bGQgZmlyZSBhZnRlciBjbG9ja3MgYXJlIGRp
c2FibGVkIHZpYSBoZG1pcnhfZGlzYWJsZSgpLCByZXN1bHRpbmcgaW4KPiBhIGJ1cyBmYXVsdCB3
aGVuIGl0IHBlcmZvcm1zIE1NSU8gcmVhZHMuCj4KPiBbU2V2ZXJpdHk6IE1lZGl1bV0KPiBXaWxs
IHRoaXMgYXVkaW8gY2FwdHVyZSB3b3JrIGNvcnJlY3RseSBvbiBiaWctZW5kaWFuIGFyY2hpdGVj
dHVyZXM/Cj4KPiBUaGUgdW5kZXJseWluZyBoZG1pcnhfYXVkaW9fZnMoKSBkcml2ZXIgZnVuY3Rp
b24gdXNlcyBiZTMyX3RvX2NwdSgpIGZvciBhbgo+IHVuY29uZGl0aW9uYWwgYnl0ZSBzd2FwIHdo
ZW4gY2FsY3VsYXRpbmcgdGhlIEFDUiBzdWJwYWNrZXQ6Cj4KPiBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3N5bm9wc3lzL2hkbWlyeC9zbnBzX2hkbWlyeC5jOmhkbWlyeF9hdWRpb19mcygpCj4gewo+
IC4uLgo+ICAgICAgICAgYWNyX2N0cyA9IGJlMzJfdG9fY3B1KChfX2ZvcmNlIF9fYmUzMilhY3Jf
cGIzXzApICYgMHhmZmZmZjsKPiAgICAgICAgIGFjcl9uID0gKGJlMzJfdG9fY3B1KChfX2ZvcmNl
IF9fYmUzMilhY3JfcGI3XzQpICYgMHgwZmZmZmYwMCkgPj4gODsKPiAuLi4KPiB9Cj4KPiBTaW5j
ZSBiZTMyX3RvX2NwdSgpIGJlaGF2ZXMgYXMgYSBuby1vcCBvbiBiaWctZW5kaWFuIENQVXMsIHRo
ZSBieXRlcyByZW1haW4KPiB1bnN3YXBwZWQsIGNhdXNpbmcgdGhlIGJpdHdpc2UgbWFza2luZyB0
byBleHRyYWN0IHRoZSB3cm9uZyBieXRlcyBmb3IgdGhlCj4gQUNSIENUUyBhbmQgTiBmaWVsZHMu
Cj4KPiBTaG91bGQgc3dhYjMyKCkgYmUgdXNlZCBoZXJlIGluc3RlYWQgdG8gZW5zdXJlIHRoZSBi
eXRlIHN3YXAgaGFwcGVucwo+IHVuY29uZGl0aW9uYWxseSBvbiBhbGwgYXJjaGl0ZWN0dXJlcz8K
Pgo+ID4gKyAgICAgICAgICAgICB9Owo+ID4gKyAgICAgfTsKPiA+ICsKPgo+IFsgLi4uIF0KPgo+
IC0tCj4gU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYwNzE4MDg1NzI4LjY3OTctMS1yb3lhbG5ldDAyNkBnbWFpbC5jb20/cGFydD00CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
