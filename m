Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 266AAC32774
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 06:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:To:MIME-Version:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tvhYp0Lyqal1uTiJS+dfomHXli9gpuLIRlzpOXLoFgg=; b=GahWAnamMZN4Qc
	xd5cW2dvgiDR+ICl/VWQUN4HvejmEZPj6odQxl0Cnw4tntEDM6CZ6lvu7hx0vF1nxSKid5Iavg2Fq
	UIeTTbiMLtMD+/V7Y9o2v7ghJiXbfa6CvJfGBsJekrqx7bglucQGpj/YN/D8DBRvr2OA/hf+aSD2D
	qHOZ9VMNzSGVjcbhEHAaZ7FgeQC49gQ6MEig4TlSII6+ALh+b2gIDP/0hW7FnzKdVEpyi4+9K78tc
	gHx0MKsht5ZgUZ/SYBtnVTUNFuNkPtU/S9BVmVQ6kmQejQyL8X0UplbID7FhRG2w90q5vr7G7v3gs
	Dopce5JvFC+BY0mYtVtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQN6H-002jsD-Ai; Tue, 23 Aug 2022 06:09:23 +0000
Received: from shell1.rawbw.com ([198.144.192.42])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQN6D-002jjK-OG
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 06:09:19 +0000
Received: from [192.168.100.101] (104-6-64-245.lightspeed.sntcca.sbcglobal.net [104.6.64.245])
	(authenticated bits=0)
	by shell1.rawbw.com (8.15.1/8.15.1) with ESMTPSA id 27N696b8089571
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Mon, 22 Aug 2022 23:09:08 -0700 (PDT)
	(envelope-from zenon@fortuna.org)
X-Authentication-Warning: shell1.rawbw.com: Host 104-6-64-245.lightspeed.sntcca.sbcglobal.net [104.6.64.245] claimed to be [192.168.100.101]
Message-ID: <da042714-1b5e-c42b-660e-a6c750ef3be0@fortuna.org>
Date: Mon, 22 Aug 2022 23:09:04 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: linux-rockchip@lists.infradead.org, service@rock-chips.com
From: Zenon <zenon@fortuna.org>
Subject: please send me the "linux-modules_5.10.66" missing in the recent
 Ubuntu for ITX-3588J system
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_230917_842270_87ABDFC2 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gUm9ja0NoaXAgRnJpZW5kcywKCkNvdWxkIHlvdSwgcGxlYXNlLCBzZW5kIG1lIHRoZSAi
bGludXgtbW9kdWxlc181LjEwLjY2KiIgcGFja2FnZT8KT24gSVRYLTM1ODhKIEkgaGF2ZSBydW4g
dGhlICJ1bm1pbmltaXplIiBzY3JpcHQgdG8gZ2V0IG1vcmUgY29tcGxldGUgc2V0IApvZiBhcHBs
aWNhdGlvbnMsCmFuZCBpdCBoYWQgYWxzbyBjaGFuZ2VkIHRoZSBrZXJuZWwgdG8gNS4xMC42NiB2
ZXJzaW9uLgpVbmZvcnR1bmF0ZWx5IGl0IGRpZCBub3QgaW5jbHVkZSB0aGUgL2xpYi9tb2R1bGVz
LzUuMTAuNjYgYmluYXJpZXMsIGFuZCAKYXMgYSByZXN1bHQKdGhlIGlwNnRhYmxlcyBjYW5ub3Qg
ZnVuY3Rpb24uClRoaXMgaGFzIHdpZGUgcmVwZXJjdXNzaW9ucywgaW5jbHVkaW5nIGluYWJpbGl0
eSB0byB1c2UgInNzaCIgZnJvbSBvdGhlciAKc3lzdGVtcyB0byB0aGUKImZpcmVmbHkiIHN5c3Rl
bS4KCkkgaGF2ZSB0cmllZCB0byBjb21waWxlIHRoZSBtaXNzaW5nIG1vZHVsZXMgYnkgbXlzZWxm
LCBidXQgdGhlIAovbGliL21vZHVsZXMvNS4xMC42Ni9zb3VyY2UKcG9pbnRlZCB0byAvaG9tZS9s
aXV0aC9wcm9qZWN0IC9yeDM1ODgva2VybmVsLCB3aGljaCBkb2VzIG5vdCBleGlzdCBvbiAKdGhl
IGluc3RhbGxlZCBzeXN0ZW0uCgpCZXN0IHJlZ2FyZHMsCiDCoMKgwqAgLXplbm9uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
