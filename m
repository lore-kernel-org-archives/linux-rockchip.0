Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 546EFC5320E
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Aug 2024 16:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSU49J38I9znll8TMii8lILtmLtcbk/Ev9vegnTNJME=; b=mEcZTTcUc6MQ5J
	lbc47xghHrHT+C7dfAqyaistVetOhRH7wY1FqnUQKe3wly9mInxSEpUwLYi80/bKRD92eLHODkigZ
	IKLIf3c39g8OD1MxGvo5XYIW92CtjdxEMnBkDFmzlW4A/oxuWdwMNTyNuKjxcXq3dl5THk2qj5dtO
	vFdcXXoYdjia9sBT4RY6NsJltxb2jCS4uAz5BvfhN4F1t5q5OJS7ROeNInJsP9/1/kyIGxVJP7Yzg
	vjUGRVHnAuPcuX5bseaCyBl3tm9/Xsc8aXAVrzY5wpukT6pAykVMERKbcnMa7sSMpSKEhQEX9BkOd
	K6FhyfOHbbplwP92UIkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siG75-00000004eR1-3PwO;
	Sun, 25 Aug 2024 16:29:11 +0000
Received: from st43p00im-zteg10073501.me.com ([17.58.63.180])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siG72-00000004eOF-0PTX
	for linux-rockchip@lists.infradead.org;
	Sun, 25 Aug 2024 16:29:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1724603342;
	bh=AzCw5QLZ7l/p6PS7v0oPCA4fX7Xj2R9lRNnxbx1J4Gs=;
	h=Content-Type:Mime-Version:Subject:From:Date:Message-Id:To;
	b=bIcu0xoKDJkmgJLCJfjo9cDbmmaAB1TI7g8b2fY+oBRBHoTwopJxn/t2mCCYp3YkJ
	 XeOp/o/r4WyfNWf01VdC6kdARg/+mNrJ9ula1OAM4bXCbrkpm7Qw+y3wLQlm5aNl3q
	 KZdX/Jnte0M9fck9GclPEBsQfLUH2VbnlkZH7F88cpL+gkrcHzRtVFaFAbduKfdhGS
	 MCpPwH4T2nOcoezIlWsbu+4A1WXe9Djf4khyUgOhPnn1oz26zWJEhnykX6OvOzSgEV
	 30x1daNHpfw7trTWzyBFiIwQjgZTevuIyxOcOCR++4mVZKY2bjZknNddpNF5kdxFHw
	 do1wYaxH0cA+A==
Received: from smtpclient.apple (st43p00im-dlb-asmtp-mailmevip.me.com [17.42.251.41])
	by st43p00im-zteg10073501.me.com (Postfix) with ESMTPSA id CCBE8A005BE;
	Sun, 25 Aug 2024 16:28:58 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51\))
Subject: Re: [PATCH v3 0/3] Add DTS for NanoPi R2S Plus
From: m.plak@icloud.com
In-Reply-To: <20240814170048.23816-1-jin@mediatomb.cc>
Date: Sun, 25 Aug 2024 18:28:44 +0200
Cc: robh@kernel.org,
 krzk+dt@kernel.org,
 conor+dt@kernel.org,
 heiko@sntech.de,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 cnsztl@gmail.com
Message-Id: <39753BDF-DC8C-4AA7-8BBC-621324BF75F3@icloud.com>
References: <20240814170048.23816-1-jin@mediatomb.cc>
To: Sergey Bostandzhyan <jin@mediatomb.cc>
X-Mailer: Apple Mail (2.3776.700.51)
X-Proofpoint-ORIG-GUID: CwCDHv_4b7D2xsJVEH-ta0ZwFMvgEuRa
X-Proofpoint-GUID: CwCDHv_4b7D2xsJVEH-ta0ZwFMvgEuRa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-25_13,2024-08-23_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=999 spamscore=0 phishscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2408250132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_092908_234229_83853F50 
X-CRM114-Status: GOOD (  12.35  )
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

SGVsbG8gU2VyZ2V5LAoKT24gMTQgQXVnIDIwMjQsIGF0IDE5OjAwLCBTZXJnZXkgQm9zdGFuZHpo
eWFuIDxqaW5AbWVkaWF0b21iLmNjPiB3cm90ZToKPiBoZXJlIGlzIHZlcnNpb24gMyBvZiB0aGUg
TmFub1BpIFIyUyBQbHVzIHBhdGNoc2V0LgoKClRoYW5rcyEgSSB3YXMganVzdCBleHBlcmltZW50
aW5nIHdpdGggYSBwYXRjaCBmb3IgdGhhdCBib2FyZC4KCgplTU1DOgoKQSBjbG9zZSBjb3VzaW4g
b2YgdGhhdCBib2FyZCwgdGhlIE5hbm9QaSBSMkMgUGx1cywgc2ltaWxhcmx5IGFkZHMgZU1NQyB0
byAKaXRzIGJhc2UgdmVyc2lvbiwgUjJDLgoKUjJDIFBsdXMgaXMgYWxyZWFkeSBzdXBwb3J0ZWQg
YnkgcmszMzI4LW5hbm9waS1yMmMtcGx1cy5kdHMuCgpUaGUgcjJjLXBsdXMgRFRTIGZpbGUgZGlm
ZmVycyBzbGlnaHRseSBmcm9tIHlvdXIgcGF0Y2guCldvdWxkIGl0IG5vdCBiZSBiZXR0ZXIgdG8g
dXNlIHRoZSBzYW1lIGZyYWdtZW50IGZvciBib3RoIHIycy1wbHVzIGFuZCByMmMtcGx1cz8gCk9y
IGV2ZW4gcGxhY2UgdGhlIGVNTUMgYWN0aXZhdGlvbiBpbiBhIHNoYXJlZCBkdHNpIGZpbGU/CgoK
SeKAmXZlIGNvbXBhcmVkIHRoZSB0d28gYW5kIHRoZSBmcmllbmRseWVsZWMga2VybmVsIChub3Qg
dS1ib290KSBzb3VyY2VzLgogeW91ciBwYXRjaCBkb2VzIG5vdCBjb250YWluIHRoZXNlIGxpbmVz
IGZyb20gcjJjLXBsdXM6CiAgICB2bW1jLXN1cHBseSA9IDwmdmNjX2lvXzMzPjsKICAgIHZxbW1j
LXN1cHBseSA9IDwmdmNjMThfZW1tYz47CiAgICBtbWMtZGRyLTFfOHY7Cgp5b3VyIHBhdGNoIGFk
ZHMgdGhlc2UgbGluZXMgdGhhdCBhcmUgbm90IGluIHIyYy1wbHVzOgogICAgc3VwcG9ydHMtZW1t
YzsKICAgIGRpc2FibGUtd3A7CiAgICBudW0tc2xvdHMgPSA8MT47CgpyMmMtcGx1cyBoYXMgYSBs
aW5lIHRoYXQgaXMgaW4gcmszMzI4LmR0c2kgYWxyZWFkeToKICAgIG1heC1mcmVxdWVuY3kgPSA8
MTUwMDAwMDAwPjsgCgp0aGUgZnJpZW5kbHllbGVjIGtlcm5lbCBzb3VyY2VzIGFsc28gYWRkOgog
ICAgbm8tc2Q7CgoKRnJvbSB0aGUgZGVzY3JpcHRpb24gaW4gdGhlIG1tYy1jb250cm9sbGVyIGJp
bmRpbmcgZG9jdW1lbnRhdGlvbiwgSSBiZWxpZXZlCmRpc2FibGUtd3Agc2hvdWxkIG5vdCBiZSB1
c2VkLiBUaGUgZGVzY3JpcHRpb24gZm9yIG5vLXNkICBJIGZpbmQgY29uZnVzaW5nLgpDYW4ndCBm
aW5kIG51bS1zbG90cyBhbmQgc3VwcG9ydHMtZW1tYyB0aGVyZS4KClRoZSBSSzMyODggZGF0YXNo
ZWV0IGRvZXMgbm90IG1lbnRpb24gc3VwcG9ydCBmb3IgRERSIG1vZGUsIHNvIG1tYy1kZHItMV84
diAKc3VycHJpc2VzIG1lIGEgYml0LiBUaGUgZGF0YXNoZWV0IGRvZXMgZXhwbGljaXRseSBtZW50
aW9uIHRoYXQgSFM0MDAgaXMgX25vdF8gCnN1cHBvcnRlZC4KCgpVU0I6CgpBbm90aGVyIGNoYW5n
ZSB3aXRoIHRoZSBQbHVzIHZlcnNpb24gb2YgdGhlIFIyUyBpcyB0aGF0IHRoZSBVU0IgMi4wIHBv
cnQgdGhhdCAKdXNlZCB0byBiZSB3aXJlZCB0byB0aGUgZXRoZXJuZXQgY2hpcCBub3cgaXMgdXNl
ZCBmb3IgYW4gZXh0ZXJuYWwgVVNCIHBvcnQuIApJIGRvbuKAmXQgaGF2ZSB0aGUgaGFyZHdhcmUg
aGVyZSAoeWV0KSwgc28gY2FuJ3QgdGVzdCBpZiB0aGF0IFVTQiAyLjAgYW5kIHRoZSAKVVNCIDMu
MCB3b3JrIGluZGVwZW5kZW50bHkgb3IgbmVlZCB0byBiZSBleHBsaWNpdGx5IHNlcGFyYXRlZC4K
CgpyZWZzOgpEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tYy1jb250cm9s
bGVyLnlhbWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
