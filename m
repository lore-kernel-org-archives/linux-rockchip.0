Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A7BC4452B
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 23:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TWaDvUOJD3B3ZNVUVaTTF9B3bmd949SFbDtOn6JFrE8=; b=nsIpwkf3c0ikJR
	zlqAq2bYTUhzW1YvRhq6LEtij6qcrYNfJm5pQuLuEzkCCf3yXahy8uhJnEnmrAS7PJkUTYXYJt6tl
	isNHMjsiOYHvNfFWQcbffH+zbtB10WjHVXy/cgbwauXM7X9C3uAanKZDWcdRKvwqLVo9rz5vsHcDA
	ispzZ0qBVMJEuNfU99X3eUGzEEPj4ytccEhxlly9otDRcr7FXxtaP0YQLvEgmiP5iNDwhg23tg4jf
	cIdKt8poonZ/HvmfiG4pe+PfdoYb970VZNhKxCmihpOTzKWmHlQii0u7WA/xCc57PVq9DiXJMq7Wj
	Z0P2GiSVt2cT+3Kt0DZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJVb-0000000AXpN-0YZP;
	Tue, 21 Jul 2026 23:04:19 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJVZ-0000000AXow-06op
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 23:04:18 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-49554ebb87dso35040495e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 16:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784675055; x=1785279855; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ak+PR6hDv4ylIDL1+7y4ZtHjaiTte6mYviZU2/IVpvg=;
        b=CuFT74Oa3XhMJv6CbhtQVc1Tgtg01ovMUsS0vK+gMG4Fq1/hMHiSwbq6iMi04y5dmy
         gWu+hKQGxJsoG54sQKh4/FwNE+TdW/LjKGiShpEX/xjB8aY1ZQuRIJnXTK4OO/Le2dHx
         c8OWCsojSmuyCB5Tf0DfsQLYHFpny97Os5N7BthKM6RmqXaOrKbD/Cke9ZL/ttnvtOmw
         McjaPtiKsHnBRuGdy5rAoKNxuchvXtL4n1RXXC4S4swDzBq82UA1xaWjwOW9CiC0i/9O
         FVMeONstr2TcqkG7XqgkCROCoscwIC6QpFrRpn7qagHc1XJ1amZ/6kcyQX0J9bAKdJSP
         lGQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784675055; x=1785279855;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Ak+PR6hDv4ylIDL1+7y4ZtHjaiTte6mYviZU2/IVpvg=;
        b=nZyytLQyIuHzfTKQvf6iCvargM9deTP6NQZN8nsnkAStRNdfMqF5Z9osxQXyHHRrTC
         V47kLljZTqenFzrwexbKKj+thP2Q3Aw5ICl95xL5dLHaZGeLapaTR5LfKy7sbkBQSGvR
         1M9v7ddwpb9IFTo2ptjMy2ZNwLjC46HPukisYeWqWST70ooIcnfnbNhW45jt/LLQn9FR
         9P1l0Aj9gJF+ymDcencRaQqO7mNKTAVLZgIHDXcYYsBfpJRmTwk1+2meblAf6ui2+lJs
         cVli/2t4vqnSP14AnrKDWncWXt4Glo7EfeAG6h4MmqB+9NYnMRVwV9VhmEVhBlvLHBGH
         yzVQ==
X-Gm-Message-State: AOJu0Yw/5Binrt02UQ2lKxbejPkFQxMTLh8glcPdESkGmA1oUIBegTaw
	Rr+XOwRZ7kaSyEdKWLqQRFoleKvN9nMlPNSyt+wPWgK2BdacHjb3bfo9
X-Gm-Gg: AfdE7cl+5ZkPVeUyc9rx4lPdKsDa5qMc6k1OUNkMHe/ZVWLwFwB5GMO2u3ZOz7gFYZF
	8Ko9Sp1H3H059VomR1lzIxit5vgHi56JDkDWXC6ZXAOylpoCQaq7zOi2sXzaVE8C1Yh5Ea/bBIq
	8DjVwpvE6NB+x6SLb9dVf1PkLMS4ssXT5QZtcLjEAwMx5OzDkIYHZKxz/OKpBp01goDAQ1wNRRk
	eRBo+Mppk0G74AKH9S7PUOrTuAer1j6DiKObjNGMHBscsaY2STgXyQTD/U3qc3qhEjHld4x+Um2
	K1boK0JV25IhCS8V2aqt+62ZFA73Cu/VAyGFdj/tAPjHjfyEkAqK7CVkTP6s1T6wjIQnckGVRMt
	n/vikkTKJHwOD5DgbzsoDlDJoR2U0z7pnvUFiLFgH2fDyC/NA59P7rtpb+XLRAG+wpwMFtswfGz
	MJi/jkdhTPyPVfivk/0DCQAELsFmZ6xsL0dePNTGw7OcPSfmWiEy9x0YiCuJjYqPo=
X-Received: by 2002:a05:600c:b8d:b0:493:f0f5:f2d7 with SMTP id 5b1f17b1804b1-4954a3e6e97mr236752495e9.7.1784675054358;
        Tue, 21 Jul 2026 16:04:14 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49565304aefsm93200775e9.0.2026.07.21.16.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 16:04:13 -0700 (PDT)
From: Midgy BALON <midgy971@gmail.com>
To: chaoyi.chen@rock-chips.com
Cc: linux-rockchip@lists.infradead.org,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Simon Xue <xxm@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org
Subject: RK3568 NPU: what triggers the CNA weight-fetch DMA after the executer engages? (mainline rocket vs vendor rknpu)
Date: Wed, 22 Jul 2026 01:07:46 +0200
Message-Id: <20260721230746.175786-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_160417_118528_32FD8AE1 
X-CRM114-Status: GOOD (  17.89  )
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

SGkgQ2hhb3lpLCBoaSBhbGwsCgpGb2xsb3dpbmcgdXAgb24gdGhlIFJLMzU2OCBOUFUgd29yayDi
gJQgdGhhbmtzIGFnYWluIGZvciB0aGUgQVVUT19HQVRJTkcKYml0LTMxIGZpeCBhbmQgdGhlIE1N
VS12MiBjbGFyaWZpY2F0aW9uOyBib3RoIGFyZSBpbiB0aGUgZHJpdmVyIG5vdy4KClRoZSBtYWlu
bGluZSByb2NrZXQgYWNjZWwgZHJpdmVyIHJlYWNoZXMgYSBnb29kIHN0YXRlIG9uIHRoZSBSSzM1
NjgKTlBVOiBpdCBwcm9iZXMsIHBvd2VycyB0aGUgZG9tYWluLCBwcm9ncmFtcyB0aGUgcGlwZWxp
bmUsIGFuZCBzdWJtaXRzIGEKam9iIGNsZWFubHkuICBPbmUgZnVuY3Rpb25hbCBwcm9ibGVtIHJl
bWFpbnMsIGFuZCBJIGhhdmUgbmFycm93ZWQgaXQgZG93bgp0byBhIHNpbmdsZSBoYXJkd2FyZSBz
dGVwIHRoYXQgSSBkb24ndCB0aGluayBJIGNhbiByZXNvbHZlIGZyb20gb3V0c2lkZQpSb2NrY2hp
cC4KClRoZSB0ZXN0IGlzIG9uZSBjb252b2x1dGlvbiAoY29udjJkLCAxNiAtPiAxMjggY2hhbm5l
bHMsIDV4NSwgc3RyaWRlIDIpCnJ1biB0aHJvdWdoIFRlZmxvbi9tZXNhLiAgT24gdGhlIHZlbmRv
ciBya25wdSBkcml2ZXIgdGhhdCBjb252IHByb2R1Y2VzCmNvcnJlY3Qgb3V0cHV0LiAgT24gcm9j
a2V0IHRoZSBqb2IgZW5nYWdlcyB0aGUgd2hvbGUgcGlwZWxpbmUgYnV0IG5ldmVyCmNvbXB1dGVz
OiB0aGUgb3V0cHV0IHRlbnNvciBjb21lcyBiYWNrIHVuaWZvcm1seSBhdCB0aGUgcXVhbnRpemF0
aW9uCnplcm8tcG9pbnQgKGV2ZXJ5IGVsZW1lbnQgPT0gMTI4KSwgYW5kIHRoZSBqb2IgdGltZXMg
b3V0IHdpdGggbm8KY29tcGxldGlvbiBpbnRlcnJ1cHQuCgpJIGNhcHR1cmVkIHRoZSB3b3JraW5n
IHZlbmRvciBya25wdSBhbmQgdGhlIHN0dWNrIHJvY2tldCBydW5uaW5nIHRoZSBTQU1FCmNvbnYs
IG9uIHRoZSBTQU1FIFNvQywgaW4gdGhlIHNhbWUgYm9vdCwgYW5kIGRyb3ZlIGJvdGggdG8gdGhl
IGlkZW50aWNhbAplbmdhZ2VkIGhhcmR3YXJlIHN0YXRlLiAgVGhlIHBlci11bml0IHN0YXR1cyBh
bmQgdGhlIENOQSBjb25maWd1cmF0aW9uCnJlZ2lzdGVycyBtYXRjaCBleGFjdGx5OgoKICAtIGJv
dGggcmVhY2ggU19TVEFUVVMgPSAweDBjIGFuZCBTX1BPSU5URVIgPSAweDEwMDBlIChleGVjdXRl
ciBiaXQgMTYKICAgIHNldCkgb24gYWxsIGZpdmUgc3ViLXVuaXRzIChDTkEgLyBDTUFDIC8gQUND
VSAvIERQVSAvIFJETUEpOwogIC0gUEMgVEFTS1NUID0gMHhmMDAwIG9uIGJvdGg7CiAgLSB0aGUg
Q05BIGNvbmZpZyBpcyBieXRlLWlkZW50aWNhbDogQ09OVl9DT04qLCBEQVRBX1NJWkUqLAogICAg
V0VJR0hUX1NJWkUqLCBDQlVGLgoKVGhlIGRpdmVyZ2VuY2UgaXMgZW50aXJlbHkgaW4gdGhlIGRh
dGEtbW92ZW1lbnQgY291bnRlcnMgKHRoZSBOUFUgcGVyZgpyZWdpc3RlcnMpLiAgUmVhZCBzdHJh
aWdodCBvZmYgdGhlIGhhcmR3YXJlOgoKICBjb3VudGVyICAocGVyZiByZWcpICAgICB2ZW5kb3Ig
cmtucHUgICAgcm9ja2V0ICAgIHdoYXQgaXQgY291bnRzCiAgLS0tLS0tLS0tLS0tLS0tLS0tLSAg
ICAgLS0tLS0tLS0tLS0tICAgIC0tLS0tLSAgICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgd3Rf
cmQgICAgKDB4ODAzYykgICAgICAgMHgxOTAwICAgICAgICAgIDAgICAgICAgICBDTkEgd2VpZ2h0
LWZldGNoIERNQQogIGR0X3dyICAgICgweDgwMzQpICAgICAgIDB4NjQwMCAgICAgICAgICAwICAg
ICAgICAgRFBVIG91dHB1dCB3cml0ZXMKICBkdF9yZCAgICAoMHg4MDM4KSAgICAgICAweDMyYzkg
ICAgICAgICAgMHg4YiAgICAgIGZlYXR1cmUgLyByZWdjbWQgcmVhZHMKClRoZSB2ZW5kb3IncyBj
b3VudGVycyBkZXNjcmliZSBhIGZ1bGwgY29udm9sdXRpb246IGl0cyBDTkEgZmV0Y2hlcyB3ZWln
aHRzCih3dF9yZCA9IDB4MTkwMCkgYW5kIGl0cyBEUFUgd3JpdGVzIHRoZSBjb21wbGV0ZSBvdXRw
dXQgKGR0X3dyID0gMHg2NDAwKS4Kcm9ja2V0J3MgQ05BIG5ldmVyIGZldGNoZXMgd2VpZ2h0cyAo
d3RfcmQgPSAwKSBhbmQgaXRzIERQVSBuZXZlciB3cml0ZXMKKGR0X3dyID0gMCk7IHJvY2tldCdz
IGR0X3JkID0gMHg4YiBhY2NvdW50cyBmb3Igb25seSB0aGUgcmVnY21kIGZldGNoLCBzbwppdCBu
ZXZlciBldmVuIHJlYWRzIHRoZSBmZWF0dXJlIGRhdGEuICBXaXRoIG5vIHdlaWdodHMgdGhlIE1B
QyBhcnJheQpzdGFydmVzIGFuZCB0aGUgRFBVIHdyaXRlcyBub3RoaW5nIOKAlCB3aGljaCBpcyBl
eGFjdGx5IHRoZSB1bmlmb3JtCnplcm8tcG9pbnQgb3V0cHV0IHdlIHNlZS4KCihPbmUgYXNpZGUg
Zm9yIGFueW9uZSB3aG8gaGFzIGNoYXNlZCB0aGlzIElQIGJlZm9yZTogVEFTS1NUID0gMHhmMDAw
IGlzCnRoZSBOT1JNQUwgd29ya2luZyB2YWx1ZSDigJQgdGhlIHZlbmRvciBwcm9kdWNlcyBmdWxs
IG91dHB1dCBhdCAweGYwMDAuICBJdAppcyBub3QgYSBzdGFsbC4pCgpJIGhhdmUgbWF0Y2hlZCBl
dmVyeSBzb2Z0d2FyZS12aXNpYmxlIHN1cmZhY2UgSSBjYW4gZmluZDoKCiAgLSBDb21tYW5kIHN0
cmVhbSArIGRhdGEuICBCeXRlLWV4YWN0IHJlcGxheSBvZiB0aGUgdmVuZG9yJ3MgY2FwdHVyZWQK
ICAgIGNvbnYyZCByZWdjbWQsIHRvZ2V0aGVyIHdpdGggaXRzIHdlaWdodCBCTyBhbmQgaW5wdXQg
Qk8sIHRocm91Z2ggdGhlCiAgICByb2NrZXQgVUFCSSDigJQgc3RpbGwgbm8gY29tcHV0ZS4gIFRo
ZSBjb250ZW50IGlzIG5vdCB0aGUgZ2F0ZS4KCiAgLSBzdGF0ZV9pbml0LiAgcmszNTZ4X3JrbnB1
X2NvbmZpZy5zdGF0ZV9pbml0IGlzIE5VTEwgb24gUkszNTY4IChvbmx5CiAgICBSSzM1NzYgaGFz
IG9uZSkuICBJIHRyaWVkIHRoZSBSSzM1NzYgcml0dWFsICgweDEwMjQgPSAweDgwMDAwMDAwLAog
ICAgU19QT0lOVEVSIDAgLT4gMSAtPiAweDFlKSBvbiBSSzM1NjggYW55d2F5IOKAlCBubyBjaGFu
Z2UuCgogIC0gUmVzZXQgLyBwb3dlciAvIGNsb2NrcyAvIElPTU1VLiAgcm9ja2V0IG1pcnJvcnMg
cmtucHVfc29mdF9yZXNldCAoc3JzdAogICAgYXNzZXJ0L2RlYXNzZXJ0LCBTQ01JL1BWVFBMTCB0
d28tc3RlcCwgTm9DIGRlLWlkbGUgYXQgUE1VCiAgICAweGZkZDkwMDAwLCBJT01NVSByZS1lc3Rh
Ymxpc2gpOyBjbG9ja3MgbWF0Y2ggdGhlIHZlbmRvciAoU0NNSSAxIEdIeiwKICAgIENMS19OUFUg
LyBhY2xrIDIwMCBNSHopOyBBVVRPX0dBVElORyB1c2VzIHlvdXIgYml0LTMxIGZpeC4KCiAgLSBO
b24tTlBVLWJsb2NrIHdyaXRlcyAoY2FwdHVyZWQgbGl2ZSBmb3IgYm90aCBkcml2ZXJzIGluIHRo
ZSBzYW1lCiAgICBib290KS4gIFRoZSBvbmx5IHJhdyBub24tTlBVIHdyaXRlcyB0aGUgdmVuZG9y
IG1ha2VzIGFyZSB0aGUgTm9DL1BNVQogICAgZGUtaWRsZSAoTk9DX0FVVE8gPSAweGZmZmIsIEJV
U19JRExFX1NUID0gMHgxZWEsIFBXUl9TVEFUVVMgPSAweDdmKTsKICAgIHJvY2tldCBtYWtlcyB0
aGVtIGlkZW50aWNhbGx5LiAgVGhlcmUgaXMgbm8gbnB1X2dyZiByZWFkLW1hcmdpbiBhbmQgbm8K
ICAgIG1lbW9yeS1yZXBhaXIgc3RlcCBvbiBSSzM1NjggKHRob3NlIGV4aXN0IG9ubHkgb24gUksz
NTc2IC8gUkszNTg4KS4KCldpdGggdGhlIGV4ZWN1dGVyIGVuZ2FnZWQgKFNfU1RBVFVTID0gMHgw
YywgU19QT0lOVEVSIGJpdCAxNiBzZXQpIGFuZCB0aGUKQ05BJ3MgcmVnY21kIGNvbmZpZyBhbHJl
YWR5IGxhbmRlZCwgd2hhdCBhY3R1YWxseSB0cmlnZ2VycyB0aGUgQ05BJ3MKd2VpZ2h0LWZldGNo
IERNQT8gIFRoZSB2ZW5kb3IgcmtucHUgcmVhY2hlcyB3dF9yZCA9IDB4MTkwMCBmcm9tIGEgY2xl
YW4Kc3VibWl0OyByb2NrZXQsIG9uIHRoZSBzYW1lIFNvQyB3aXRoIHRoZSBzYW1lIGVuZ2FnZSBh
bmQgdGhlIHNhbWUgcmVnY21kLApzdGF5cyBhdCB3dF9yZCA9IDAuCgpNeSByZW1haW5pbmcgaHlw
b3RoZXNlcyBhcmUgYWxsIGhhcmR3YXJlLWludGVybmFsLCBhbmQgSSB3b3VsZCB2YWx1ZSB5b3Vy
CnJlYWQgb24gd2hpY2ggKGlmIGFueSkgaXMgcmVhbDoKCiAgMS4gYW4gb3JkZXJpbmcvdGltaW5n
IHJlcXVpcmVtZW50IGJldHdlZW4gdGhlIGVuZ2FnZSBhbmQgdGhlCiAgICAgd2VpZ2h0LWZldGNo
IHRyaWdnZXIgdGhhdCBhIGJ5dGUtaWRlbnRpY2FsIGJ1dCBkaWZmZXJlbnRseS1zZXF1ZW5jZWQK
ICAgICBzdWJtaXQgZG9lcyBub3Qgc2F0aXNmeTsKCiAgMi4gYW4gaW50ZXJuYWwgQ05BL0NCVUYg
c2VxdWVuY2VyIG9yIGNyZWRpdC9oYW5kc2hha2UgdGhhdCB0aGUgdmVuZG9yJ3MKICAgICBwb3dl
ci1vbiBvciBmaXJzdC1qb2IgcGF0aCBsZWF2ZXMgYXJtZWQsIGFuZCB0aGF0IGlzIG5vdCBhCiAg
ICAgQ1BVLXZpc2libGUgcmVnaXN0ZXI7CgogIDMuIGFuIHVuZG9jdW1lbnRlZCBDTkEgcHJlY29u
ZGl0aW9uIChhIENCVUYgLyBEQ09NUCAvIHdlaWdodC1ETUEgZW5hYmxlKQogICAgIHRoYXQgbXVz
dCBiZSBzZXQgYmVmb3JlIHRoZSBmZXRjaCB3aWxsIGlzc3VlLgoKRXZlbiBhIHBvaW50ZXIgb2Yg
dGhlIGZvcm0gInRoZSB3ZWlnaHQgZmV0Y2ggd29uJ3Qgc3RhcnQgdW5sZXNzIFggaXMgc2V0Igp3
b3VsZCB1bmJsb2NrIHRoZSBkcml2ZXIuICBUaGUgcmVzdCBvZiB0aGUgZHJpdmVyIGlzIHVwc3Ry
ZWFtLXJlYWR5OyB0aGlzCmlzIHRoZSBvbmx5IHRoaW5nIGJldHdlZW4gInN1Ym1pdHMiIGFuZCAi
Y29tcHV0ZXMiLCBhbmQgSSB3b3VsZCBiZSBoYXBweQp0byBydW4gYW55IHRhcmdldGVkIHJlZ2lz
dGVyIGNhcHR1cmUgb24gdGhlIGJvYXJkLgoKVGhhbmtzIGluIGFkdmFuY2UuCktpbmQgcmVnYXJk
cwpNaWRneQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
