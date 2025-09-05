Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D748BCA0FED
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 00:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/bOjkZ9wBnZb0OCclbwdRbbi93j1yUq79s5aAZLwkQI=; b=15EMCCV/QEeHDD
	ygIL8hDjudkJt+YwZfl/EaESIWDQs2cws7LdHyu8Hwg1chalhaaKNs+BntAhRH3VmJzyy7GKx2LR/
	2thlS9c4u56hsg4ixRqZrHjavrMDGLi6UkWFdMtyiWjZlzMJYgC+nGI8pkmWpMsH5iTMzd+MMtQhN
	z5h1nl1GTc9Hc68YEA8yCPuelCfdcwpIq+BfJjMsDmF6OAnP7vgXwMf8huQ+6ho1AR1wYSN5FbWXq
	85sQtAJA7++zXHRwCwGxGw1bMnVpuEpK/4CJDg2WZyfdg1fMtdGHmo1K+hYSjd4JMk3GuOCHa3JMy
	9gE7+ZlmxcP1FBp8dJLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugWc-00000005Tpk-0YX0;
	Sat, 06 Sep 2025 00:11:26 +0000
Received: from mail-westeuropeazolkn190130003.outbound.protection.outlook.com ([2a01:111:f403:d201::3] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubKe-00000003r3t-3L7n
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Sep 2025 18:38:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nXHcaDqA2lLBIZ6qsvSIptMI9iMwRV9zF9XxSfMK49F4hvl+flW2h4cG/preXgBlRWrJfbo5qEElE8zICA88lYh4UngR/xMI0xwK6/ju8DhL75XcFtkcraN006MpRj9VePnHh8xMD1JlFfu8rAK4jXB+ZpiZEt9CxDBsoW5zkXTGfTIazyDBIH4nGc+7I8RPXQ8jrKy0iMARBQV9JaFi6RNakjBHUyNEHn4j7GpXpDm+3Dd3qVG/knXLSGOLdU2mWuaZ6PBC2P2jqpc9oK25ELxKqp9oaLn6t9AUiJsXpzutYgllIC6PV1StNq687vas99mP/TgyvK0zoajW+Q914g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iyKrp7I82f3wYzsbQR/1Jeu1cFgJoa6hSbBVeuarAhw=;
 b=X2oAou9Rt/Dqnfzm3W3xz9mUF8APaVIKWl0x41LwieEZ8yKyAnZbHtw3qZf87LtkCLhedZIoMl+GF23tuzvt0v+cjwCnU0yszaeEEDFNjZ+ZPyx3fwiS93GB6C3qHQ4HOqOfPbmtMV/6dL8ABVvpEI2ewclwb6uKEkHhW0n6tajlZ3EtKWn42vvhOKsVxS2bxEwkc/rCI6raHgvlpBerDTfd5vC/SNnHeXOUzQjW2Zc9ldZYt/PzGBhe1DfHbwsBb3sgNY0B6GEhVRC6l+TiVmrlH0GoEcG3GQtyZG5d5dfhTWRrEPkaC7rFelnqCYfk2DiVADNI9GnE33rtxacqcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iyKrp7I82f3wYzsbQR/1Jeu1cFgJoa6hSbBVeuarAhw=;
 b=p0iLnRl98qIrXe8lFt2iBzx9MTu3r0tYuWTzaDPos1ZUfgjwZDt2+7l0Ig810K/Iw6UgnutxdZNwRJN3H7QZBlkYV2vxLH0HXUSsb3XUBylnNYHDL1NXkGVg6JC5EkrwqijeTwr/t0aZy1ZaYEcOMJm8FuX8G+QfRUTbNrVNW64jeFSSU/xMhE/c2dgQZjCDdp/OzDk0/34IYUjAOso1lq2bvT4x8+Z+c30oHzv4I83niTDomJISSrc5zyvc1b+Vt2eX+7CvILlZ7Rltna5g1Uo6qN+i2mbBUtA79yyBd4TBnHFCY+kAUK37AmlA3WYuPhsKxyhTH71Wq4YEdV6ivA==
Received: from DU0P190MB2445.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:5a5::8) by
 DB9P190MB1963.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:397::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9073.27; Fri, 5 Sep 2025 18:38:40 +0000
Received: from DU0P190MB2445.EURP190.PROD.OUTLOOK.COM
 ([fe80::5dcd:351e:4e91:2380]) by DU0P190MB2445.EURP190.PROD.OUTLOOK.COM
 ([fe80::5dcd:351e:4e91:2380%5]) with mapi id 15.20.9094.018; Fri, 5 Sep 2025
 18:38:40 +0000
From: Muhammed Subair <msubair@hotmail.com>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: 
Thread-Index: AdwelEtyLg5mVZ6qQhiPMaofPT6bbQ==
Date: Fri, 5 Sep 2025 18:38:40 +0000
Message-ID: <DU0P190MB24450B3C3CE82335B3F5FEF6BC03A@DU0P190MB2445.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0P190MB2445:EE_|DB9P190MB1963:EE_
x-ms-office365-filtering-correlation-id: b0e55655-b1b9-431b-193c-08ddecab6f28
x-ms-exchange-slblob-mailprops: 3IIDYWa+CTUBL/rE5dfw4FEIltRNOe5840Oxz2sGVQJnso/VNL5KsLmXKutC7T+1guCg+9GquJrDMj/eIrLSGdMpbcYwfiz7pDu1BWjxUszweue7x7Ge3XQy5y+xMeEi39TtzXUcD2PM41ECtR4OrDfXFtx8UJwkzFvMPdCYV4oRKtDDQd6Lzl20eOaCA2Js0p6CJ9/4WHEIUSYhai6sbiGlcYDdynFqFb3wqejAbniJffALh/HGnn0Axsx56XvvNd/0/phcXkqZLlW+zby5h25VcKAVWr6GXu5uUefg0HMkkGAVTIMNLWIVOc7ut3d03rznA7jPSBClNbyn/JORPCPYQMNiyskmNilUCsj1+3hLTBbILOEviWq8KX93jVnTe+bAGhGHBhgtOXVcFBLsyvXdMw1WpddaPst3CBwYxtpLm7GeeFs+Ej2w0lWqVSev4DFqb0ROOEI1oRMv6NAM8PlH/H2KBeSIWsAqxohGOmnfiBBYBg64esHjEfA3kXlzR7Q9DMSEM7z+tdaueBFEairBM5GWUAQW
x-microsoft-antispam: BCL:0;ARA:14566002|461199028|19110799012|13091999003|8062599012|15080799012|31061999003|3412199025|40105399003|440099028|850799032|102099032;
x-microsoft-antispam-message-info: 59GxP/f9RfbJp3s0Ybc1wBPAJQEUn5KHJmxWOJo/KJL85ZAGyobCPnFpE2+tYzq/+4J5cO5BbQESMT1CjSS44IKJkwOSHJ0MX3vMK5/ZU4vqnSXMy6S6k6aBbATZ9fRBsOnTlR3BKUPZsEvZGc+DPrcM7vlgAZ+P5yRKTj1kG9r1fY4VFvp7EJvGM7i11Z0dfRuIpq30ty0U36z/O9GQJjXrQGXNS/QO+hR3mgUjTFGhVg9xZf/qoWfroIxa9UuyMKRdZra/hYvgUqmlW3ywnxLVvuOwpGHk/E1a57j0N8Ls9xSGNFkDgPT9WxQJL/JsGDNYIARY78M6jbVoUaFKT/CUKg27Df5SOYuwcG8JjaJfRAmfi7I3gySStlcQoVZOoVZ0OtxdTQ0s9uhR7RCc5cuDkZ2L+Njj5Q8tMV68blVL6HT+FzyYC+LXU6R4KKXSxkl1nLverBqsLavf7lj3duqigvHbL5/bGamADnHdF3xOntRr8K7GGYE5dbQuvTGgJ1ptgEsOhHJ8ZLA2+1umVicqgtIKZQlKM3KHMXXhfgug2upTrzgKVymCHembpdmLDUx90/9FOwOAwEVa5pPknhZ6qUK09D4rihVn5M4lVBn2unzERtIsaSpT10LiV7u0z2fK2kOV1KHLUwlelfDznRr0klxJnC29tqoeHZZ02S2+uONdSg3prdJC1ekrL1nwO8D5xsCerIvFMp1vulrPUgZqhsW4xdEmIiYA3X1k1YpmlCKgOPo46SMw7Xcvj1sAwB9UvAmbbRgdxNnbhvXUFr1AAd9S+mJx8RfNXKSFrb70k2mhkRztqYUvqvox0tyZlj3Js4SU8+FldjvBgULvsabYTLPb55VKg9Whdthso2SrTF6PtMRz96orHvwDxRkRp3MEeo+sBbp5v1zg63qj2Q==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VjIrQmZRZFRHMW9XM2pBWDB3dVhjeUJsQ1BGRFZ5NmdFV3haSlltZkRmck1E?=
 =?utf-8?B?OTJOU21tSURMTkhIV2pjTlAvOVIxc3pidXZHNVRGbVBkZk1HYzNIaFlQUXV2?=
 =?utf-8?B?a2s4ckRHNUpYaWdZc1RDNzEraDNHUC9jT095WG9CaDlGdEI1S3U2UFJ2LzY5?=
 =?utf-8?B?UC8xc01Dc1Q3S0gvTThLUVZiL1JoaXg1THcvTjFDVWlqNjdoaURlcUo4SG9p?=
 =?utf-8?B?bFVkbWxwVlE4aUl6anA2STdNVUFMampFQU5pZ1dtbzZza2lvWXhNNDQ2VmpJ?=
 =?utf-8?B?dEl3Ylk2N0RGV2YxbFUybTNpcHI1M1dCYVlWUmZDSndUeEtCQStqKzdJdTdj?=
 =?utf-8?B?bTN1dTZQMERQTWhEcXU0SGs4SlM4ejZDVm8wTTVYbkFoZi9IOVc3OUNVYzBa?=
 =?utf-8?B?N0ZPR1NLSnp0aGZyT0Y4TmkyZG9yWjNDcEl5QlA2SlRuZERMZW9mU0ZKWDdM?=
 =?utf-8?B?V3hIQ1dZZHRiMVVMRWZWTkdBMnRQUkRaMDNnK2E2TlV2TE1FSWluZ0lmQW9Z?=
 =?utf-8?B?Y2ZLUjdqSk9maXcwR2h1OWw4NjFSaGs4VGw5V0t3ZnM3T1lZNjkyeU45TDQy?=
 =?utf-8?B?WU9oRHJaRnJtc3FjZWRVaXNQdUpXY3hKeDE0dHNtbTJ6WUNlY0pxUW5vUExV?=
 =?utf-8?B?VkdQeWllZjJUQWkrSmNlRHY5UDdKV2hTZkh6U0crZXBXU2oyYjI2UmRXSGh2?=
 =?utf-8?B?UTJyWFExSi9wMkJWOStvWVEyc096WmVUK05pNjdaazR3aUpjTEVKRytZM2tR?=
 =?utf-8?B?VEtONGhHQk1rMTJoRmhVVFZzaEJHYVFLdWR2ejRUV1RVYldYbzBKMHNmY1hZ?=
 =?utf-8?B?ZzN4M2dOaklPUjVpVVdDV1JaejN0cS81azNpbTNNS1pMek0zTmRCODZ0UmZx?=
 =?utf-8?B?Rk5qejhENnowb1dUczVGQUFwQVRsVFdUWGNDcXdWS01oRUZ6dkVhS1ZJd0Zp?=
 =?utf-8?B?TkMrcGRlbk91QUZiSzk0R2dTcDFGVCtJd3B0UzkzUGxGenIyUWQvdUx0Qkl3?=
 =?utf-8?B?UFJCZGk0TXVXcmdxUHBYMjZhQThOWkd0L0pmZm9tM2xVUkJ5akxTUU9DMGxy?=
 =?utf-8?B?S3F6cTRFcUQrZGFRdXBTWE9maEF2ZEI2c0QxcE1ERVVtUkJwd0ZnSlNxKzkz?=
 =?utf-8?B?NnNxbE9TRzlXTnhWMllJRXBDTzBseTRCWnVQMDBZR2cyZDM2ZDBOUEoyMUc1?=
 =?utf-8?B?Ujl3SmZ6L0VNa0ZTSFJoRmJJZDVIN0h2dWloeXQrS2d0cFJYMHh4S09mSk9u?=
 =?utf-8?B?R2UrYXdxVVRMYU5vRWw2MkIyekhSejFPc3RaREM1c0ZJZTlLMGs4aUxDT2JY?=
 =?utf-8?B?V2FUNXZHeUNmOG8vNlBlSUhsV2hhaFJBSStPVEE2VXdTZ2I5aXZuekp2UXhh?=
 =?utf-8?B?Q0orVkpiS0xiWk44V21qU3llaUZ1VStNR1RkQzROWXJJcWVYVXFYdTZ3bXly?=
 =?utf-8?B?MHFnWG9QNGM0NGFlekZvcG9Kb3o5ZStDaVlvWnVNMnhsNHFBeGpVMExFYS94?=
 =?utf-8?B?SGFoTDVza3hRZEhnOTNIbS95VmU1RkZPSTRmbTJRcjBBRjlPc3hUUkFvVGxY?=
 =?utf-8?B?Z0hVQnU1eTJ4eXVGSndPSCtuamJNRW8zaXdIYjFRejdENGt3amZtMzFxQWNC?=
 =?utf-8?B?cnc1ai9mcEh6NGV3Y3EzSWxaaXZUSUE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-8534-20-msonline-outlook-e6540.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0P190MB2445.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b0e55655-b1b9-431b-193c-08ddecab6f28
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 18:38:40.4540
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P190MB1963
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_113844_830211_EC00C4BA 
X-CRM114-Status: UNSURE (   3.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
