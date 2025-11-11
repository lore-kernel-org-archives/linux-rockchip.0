Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04D83CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=II2EGMOaDTRy/luHRQ36mx/YBKBvr+WyBVw8/BaYXMY=; b=PD2mH0YkVWIO2f
	A65zKO6OtLxNeBLik3JxOrKb/eZgeKL737DWitsp+ZzVYT+bnUZsm4mWyVKwSJxiVq0c+FriAObFE
	v5+Y31gAZ00dddkNR+ZcgNBl0gISn1G2kJfIYqHBy1DNzqJInvT5onqyIjA9RpNd+7k5VcIR6cfA7
	Oj1/eRmQcApXoKjq1L3zUj1Pv3LQZ/b/PEIr6uKDSSNcUUEB3IGV9fe2znGYUBsAxwkYYhWnRYaWB
	YalXY3RIJOZUBO/+0EuwqApJJtI7b1+oDZKvGxVuuF+IzlQghKKjJH0PwHp7rz2PUOO3saTYogqs4
	fJ78GORNrIA42RbRarJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vImxR-000000077WI-3e4m;
	Tue, 11 Nov 2025 11:54:45 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vImxP-000000077Ts-1LHU
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 11:54:45 +0000
X-QQ-mid: zesmtpip3t1762861977teba315bb
X-QQ-Originating-IP: 9hk3gt7N3vjJwmXMB16WeBR8MVSYirzN9zA3vngNTqw=
Received: from [IPV6:240f:10b:7440:1:62e3:2c99 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 11 Nov 2025 19:52:54 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4277675725007631455
Message-ID: <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
Date: Tue, 11 Nov 2025 20:52:54 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Joseph Kogut <joseph.kogut@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 honyuenkwun@gmail.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NSdk79fbXCzSL5DG/KqddmABTDb89FEkhKKOW4DaP5cqo28AaXtl4E5V
	qs0wChiOGdMpMKSTcbh3tNCX8lUKdTl6iZZvw4iXMYq/9HBkuImvxiCawEW6gPbazJ1JJlk
	aUXFjvylAC0ItDnlmmReHvLe0fAReZH5jMK6PSaKiPt720LRcXU+65krInbJWKtO/VxM+ts
	kUJiR8cZuL76+lPzpBQGPmGlfOl1piPrSeLj6pXcL1omVqRMqCl3dmLUk2Q1d0cwZKSAHD3
	5Zm1gkI+foi7CRcLxNsyjioQoXgc2+i1ppDsXSOfGov7uel1OeZ2yXrMEtVAF3WxqtoEafQ
	V8RusYtsBGkuKI+qQune+6yys+hnh2vpcX1dlleis+jbUBSFij/m2HGytfXsdnVKYDOif3F
	Kcv6JMbsHb/LIIr6FI5jUNvKj6dP9LirR2J4EDW8WxLMS/mUn0uVFIzRoPZvwXecMW6dA2Q
	80ZFmjCrW3cTasvaFLFWdeNv7fHUW4hcAvX8jexH4iByDDbGwiSiZigtIxys6Vs+o5SEz1M
	CWpNaOiZZfMZvkE86B7RWVgrvkdk2He7ioMJRY/KEsK8iwrGBxcN+534pLSB10i8Q4C7RjW
	6EMCMxtwoTCp7o/jYR/n7OUyHDKHI6TjxDihXrg/DHXR8BPGVv0p1U/nXu9rrhhWyqRHVP6
	TfL8NGJ6kgJpHQnJ2nXERNZp5CmrdMM3T4TrDkv6ZoqdYCnJoPnS0r05PQ+AUSVHUO0c5ls
	Z7RnMK056eQAGhdEn23Eb1BQ8LmPQ2WS/zlvagbEzyDzUD6Pksl8Y8wju4K5nLE0Ft78fPp
	qNi+G7rdxQdUyxbO1koao0OIUR4FcKEPjfrXHOYHnt66mLaymnUq+1W2fnDQ0qm3oAmms7B
	/8YmWo2qUQRkmZjZfXqvPINCVMPS0B6wtW/jX4kkgKuE9olE+lYwDF33mBdIQUHejpOFKOu
	Egf8gItAamritdkimR1TrDTQtA5W01rfG/u64wWV77dNH7RGJGpEa3Xk7AduHPaxUH7veSl
	WpI6O6xNOt+srZcVclRkG7z1GOy+yy7fsZC3jpxQ==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_035444_271115_4414616E 
X-CRM114-Status: GOOD (  11.43  )
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

SGkgYWxsLAoKT24gMTEvNi8yNSAwMjo0OCwgSm9zZXBoIEtvZ3V0IHdyb3RlOgo+IEhlbGxvIGFs
bCwKPiAKPiBPbiBXZWQsIE5vdiA1LCAyMDI1IGF0IDQ6MTXigK9BTSBGVUtBVU1JIE5hb2tpIDxu
YW9raUByYWR4YS5jb20+IHdyb3RlOgo+Pgo+PiBJJ2QgbGlrZSB0byBjbGFyaWZ5IHRoZSBzaXR1
YXRpb24gcmVnYXJkaW5nIHRoZSB2NiBwYXRjaCBzZXJpZXMgSSBzdWJtaXR0ZWQuCj4+Cj4+IFRo
ZSBvcmlnaW5hbCBkZXZpY2UgdHJlZSB3b3JrIGZvciB0aGUgUmFkeGEgQ001IGFuZCBJTyBCb2Fy
ZCB3YXMKPj4gYXV0aG9yZWQgYnkgSm9zZXBoIEtvZ3V0LiBJIHRvb2sgb3ZlciB0aGUgcmVzcG9u
c2liaWxpdHkgb2YgZ2V0dGluZyBpdAo+PiB1cHN0cmVhbWVkIHdpdGggaGlzIGFncmVlbWVudC4K
PiAKPiBJJ2xsIGNvbmZpcm0gdGhpcy4gSSd2ZSBiZWVuIGluIGNvbW11bmljYXRpb24gd2l0aCBO
YW9raS4gVGhleSBtYWRlIGEKPiBsYXJnZSBudW1iZXIgb2YgcmV2aXNpb25zIHRvIG15IG9yaWdp
bmFsIHBhdGNoIHNlcmllcywgd2hpY2ggSSB0aGluawo+IGhhdmUgdGVjaG5pY2FsIG1lcml0LiBJ
IHN1Z2dlc3RlZCB0aGV5IHN1Ym1pdCB0aGUgcGF0Y2hlcyB0aGVtc2VsdmVzLAo+IGFuZCBnYXZl
IHRoZW0gZXhwbGljaXQgcGVybWlzc2lvbiB0byBhZGQgbXkgU2lnbmVkLW9mZi1ieSBhbmQgQ0Mg
bWUuCj4gCj4gSSBhc3N1bWUgdGhpcyB3YXMgdGhlIGNvcnJlY3Qgd2F5IGZvciB0aGVtIHRvIGNv
bnRpbnVlIHRoZSB3b3JrIEkKPiBzdGFydGVkLCBidXQgaWYgbm90LCBwbGVhc2UgbGV0IHVzIGtu
b3cgdGhlIGJlc3Qgd2F5IHRvIHByb2NlZWQuCgpDYW4gYW55b25lIGhlbHAgdXM/CgpCZXN0IHJl
Z2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBM
dGQuCgo+IEJlc3QsCj4gSm9zZXBoCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
