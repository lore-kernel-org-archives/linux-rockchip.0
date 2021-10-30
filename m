Return-Path: <SRS0=IXgf=PS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AA0BC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Oct 2021 18:05:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0FF2560E98
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Oct 2021 18:05:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0FF2560E98
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=ts3card.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:To:From:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R4EW8kVLL5mcuxd8fql3p545sbB4UzXKso67D+EQ9EI=; b=CcscU+zxlXRiOT
	YO5nVvifhR2bRnFdd4XrtyP2XI1sbnD02DvGSv50mPGdmBVXPmd37wiXdgbAQdjNmLkVJ6/EDoA+O
	KJj5QA3+XkRtsqBr7c/GtvC9S/r9HUHzpwjhyVxz4jiQYSsh4RFAByDXhQ6+Z7zgbcSFHS9FBVOns
	2AIGK4GjROJ70RE23IJLOkBnkwl0VerOUYakX0Yff7Nf5LJGBLcBuYJnMkOTwllClQor8jZPmmLuA
	yWU0LLPqwUNbT2K4/ZBp9Trcq3AnnSGMMHeEzU03TfE4Qe1lqfrUje6sZV/7LjaHbvKItnwS9uNtc
	DpqcJkTUBdMThAAoJ7/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgsjB-00DPB3-M0; Sat, 30 Oct 2021 18:05:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgsiw-00DP8Y-Lm
 for linux-rockchip@bombadil.infradead.org; Sat, 30 Oct 2021 18:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=TAmmRRp70bueA4xXNdkUu6+3jmjKmQGfBTKe8CU+pJo=; b=kcMcT4a/kal7kJx+SJSO566iIu
 Luirts/xXxJzuGzGzJWqiNyMhBKV/XJKQaVqrxuYInJoE1yUAv3i31xiPyiVzbe6flCd8hH7MBcby
 R4MvW7sd33bI0bjSTBlYQ8f4uNhtMYc8xvMV1Z9hB1TgO/dap+EzX0mb64bNXbm49ZUZHmTNb+Fxn
 nIruGIFzvufVG4prC/7l53fFChUmIi1OKVYTF+DgM//KIspAMpQe6nj2MZPaiN22e7QPNwylshrbF
 GWtt0be8Yr7Vg6uNdOXzPQBVGAYQ62qutiVrQ1c/JXCE8EvjUeF5X3Am+if+5rqYKMZBCilNM/+8a
 5v91wC9A==;
Received: from [123.58.198.57] (helo=ts3card.com)
 by casper.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgshf-002ZKW-I0
 for linux-rockchip@lists.infradead.org; Sat, 30 Oct 2021 18:04:19 +0000
Message-ID: <20211031010339532083@ts3card.com>
From: =?utf-8?B?44OI44Oo44K/44OV44Kh44Kk44OK44Oz44K55qCq5byP5Lya56S+?=
 <info@ts3card.com>
To: <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?B?VFMzIFRTIENVQklDQ0FSROOCq+ODvOODieOAkA==?=
 =?utf-8?B?6YeN6KaBOuW/heOBmuOBiuiqreOBv+OBj+OBoOOBleOBhOOAkQ==?=
Date: Sun, 31 Oct 2021 01:03:29 +0700
MIME-Version: 1.0
X-mailer: Qfzj 9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_190400_095068_91FCC7CC 
X-CRM114-Status: UNSURE (  -0.68  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSBDQoNCuKYheOAgi46KjpUUyBDVUJJQyBDQVJE5Lya5ZOh5YCL5Lq65oOF5aCx5aSJ5pu0
44CC4piF44CCLjoqOg0KDQrilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIENCg0KDQpUUyBDVUJJQyBDQVJE5Lya5ZOh5qijDQoNCuOB
k+OBruOBn+OBs+OBr+OAgVRTIENVQklDIENBUkRF44Oh44O844Or44K144O844OT44K544KS44GU
5Yip55So44GE44Gf44Gg44GN44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQoNCuW9
k+ekvuOBr+OCu+OCreODpeODquODhuOCo+OCt+OCueODhuODoOOBruWkp+W5heOBquOCouODg+OD
l+OCsOODrOODvOODieOCkuWun+aWveOBl+OBpuOBhOOCi+OBn+OCgeOAgeWAi+S6uuaDheWgseOB
rg0K5YaN6KqN6Ki844GM5a6M5LqG44GZ44KL44G+44Gn44CBVFMgQ1VCSUMgQ0FSROODoeODs+OD
kOODvOOBruOCteODvOODk+OCueOBr+OBmeOBueOBpuWBnOatouOBleOCjOOBvuOBmeOAgg0KDQrm
nKzml6XjgYvjgonjgIFUUyBDVUJJQyBDQVJE44Oh44Oz44OQ44O844Gu44Om44O844K244O844GM
6YCa5bi45L2/55So44GX44Gf44GE5aC05ZCI44Gv44CBMjTmmYLplpPku6XlhoXjgasNCuS7peS4
i+OBruWAi+S6uuaDheWgseaUueWWhOiqjeiovOOCkuihjOOBhuW/heimgeOBjOOBguOCiuOBvuOB
meaJv+iqjeW+jOOBq+OBruOBv+S9v+eUqOOBp+OBjeOBvuOBmSANCg0K44Ot44Kw44Kk44Oz6KqN
6Ki8Omh0dHBzOi8vbXktdHMzY2FyZC1jb20ucHFmdW52LndvcmsNCg0K44GT44Gu44K144O844OT
44K544Gv44CBVFMgQ1VCSUMgQ0FSROODoeODjuODkOODvOWwgueUqOOBrumAmuefpeOCteODvOOD
k+OCueOBp+OBmeOAguOBk+OBruODoeODvOODq+OBruWGheWuuQ0K44Gr44GU5rOo5oSP44GE44Gf
44Gg44GN44CB5LiN5b+F6KaB44Gq57Sb5aSx44KS6YG/44GR44Gm44GP44Gg44GV44GE44CCDQoN
CuKUj+KUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUkw0KDQrjgIDilqDmnKzjg6Hjg7zjg6vjga/pgIHkv6HlsILnlKjjga7jgZ/jgoHjgIHjgZPj
gaHjgonjga7jg6Hjg7zjg6vjgqLjg4njg6zjgrnjgavjgZTov5Tkv6HjgYTjgZ/jgaDjgYTjgabj
goINCuOAgOOAgOWvvuW/nOOBr+OBhOOBn+OBl+OBi+OBreOBvuOBmeOBruOBp+OBlOS6huaJv+OB
j+OBoOOBleOBhOOAgg0K44CA44CA44Gq44GK44CB5pys44Oh44O844Or44Gr44Gk44GE44Gm44GK
5b+D5b2T44Gf44KK44GM44Gq44GE5aC05ZCI44Gr44Gv44CBDQrjgIAg44GK5omL5pWw44Gn44GZ
44GM44CB5LiL6KiY44GK5ZWP44GE5ZCI44KP44Gb5YWI44G+44Gn44GK6Zu76Kmx44Gr44Gm6YCj
57Wh44KS44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCDQoNCuOAgD09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCg0K44CA4pag
55m66KGM77yaVFMgQ1VCSUMgQ0FSROOAjOODhuOCo+ODvOOCqOOCueOCreODpeODvOODk+ODg+OC
r+OCq+ODvOODieOAjQ0K44CA44CA44CA44CA44CAIGh0dHBzOi8vdHNjdWJpYy5jb20vDQrjgIDj
gIDjgIDjgIDjgIDjg4jjg6jjgr/jg5XjgqHjgqTjg4rjg7PjgrnmoKrlvI/kvJrnpL4NCuOAgOOA
gOOAgOOAgOOAgOOAkjQ1MS02MDE044CA5oSb55+l55yM5ZCN5Y+k5bGL5biC6KW/5Yy654mb5bO2
55S6NueVqjHlj7cNCg0K44CA4pag5pys44Oh44O844Or44Gr44Gk44GE44Gm44Gu44GK5ZWP44GE
5ZCI44KP44Gb77yaDQril49UT1lPVEEsIERBSUhBVFNVLCDjgrjjgqfjg7zjg6DjgrksIOODiOOD
qOOCv+ODrOODs+OCv+OCq+ODvCBGREPjga4NCuOAgOOAgOOAgOOAgOOAgOOAgFRTIENVQklDIENB
UkQsIFRTIENVQklDIFZJRVcgQ0FSROOCkuOBiuaMgeOBoeOBruaWueOBr+OBk+OBoeOCiQ0K44CA
44CA44CA44CA44CA44CA44Kk44Oz44OV44Kp44Oh44O844K344On44Oz44OH44K544KvDQrjgIDj
gIDjgIDjgIDjgIDjgIBbIOadseS6rCBd44CAMDPvvI01NjE377yNMjUxMQ0K44CA44CA44CA44CA
44CA44CAW+WQjeWPpOWxi13jgIAwNTLvvI0yMznvvI0yNTExDQooOTowMO+9njE3OjMwIOW5tOS4
reeEoeS8kSDlubTmnKvlubTlp4vpmaTjgY8pDQril4/kuIroqJjku6XlpJbjga7jgqvjg7zjg4nk
vJrlk6HjgZXjgb7jga/jgIHjgYrmiYvmjIHjgaHjga7jgqvjg7zjg4nliLjpnaLoo4/jgavoqJjo
vInjga4NCuOAgOOAgOOAgOOAgOOAgOOAgOOCq+ODvOODieOBq+mWouOBmeOCi+OBiuWVj+OBhOWQ
iOOCj+OBm+mbu+ipseeVquWPt+OBq+OBiuOBi+OBkeOBj+OBoOOBleOBhA0K44CA44CA44CA44CA
44CADQrilJfilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilJsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
