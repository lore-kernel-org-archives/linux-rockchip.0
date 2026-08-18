Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97B30C5DF70
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2026 09:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1n1M0qurzuUD2cs5QyeuIqlZISrhhyq+4aagSPNOpo=; b=GOPEq1VdiI1PQQ
	VBV9gH/Fl7ESMjNijuUM+Bg+Rc01W4xgvzLwRtJJQy/l2sDBr1RblJiEC7JFaWHTsC57R3GMnFSMi
	AlhgwIFtyMDQY2ZdxukjnJDM9Or/Xb9VT058BG/po81vfV8eIeaAmLj1Olq1zQsqtXqUbneYW+i47
	WFsMkddgCh1iTqfBL1kT24rpw9cfrEXyaMMHFEFSO34dYmFOZGQE1SLA9nglHSEm/tlRJXwILGpcC
	jml+bmlbfmcdNtmC8o+tj7vPlFPtYFU4UC7j1wrmD208I3LLaEDTmAjS8W6hyDWy7Vf1jENMFLH7o
	HU0Ut+JnHDPNagtSnk5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFkP-00000007ZAC-39ML;
	Tue, 18 Aug 2026 09:04:41 +0000
Received: from mail-westeuropeazolkn19011035.outbound.protection.outlook.com ([52.103.33.35] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFkM-00000007Z9Y-1r7L;
	Tue, 18 Aug 2026 09:04:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dkIAqNe9WTcBUrEBUGlWLhMmydpKfCK30t9JvuU8MCPDVApub2bLTRGUjAVjk6LJZXWOdewZiG9xgP4aJophu4YPO8AV2zqAlxxBzwEGFUf5OcJTD6z47tqXgKvn5sEpA0M/VWlzICfgoOhASFGpq2u6UY/jPQnbo4+RLGuZQIQ9W7frvl7Y1uFCPKzfFdJgUHs6kHvZrqGlWefqIfGdVLg8SVn0BfRngib2pVYFqFkWpGCR1k0UdDF47hIuyrW7/wqi1w0AFCgi3AD9aZIukGf1L/uiEpDogpj+d8V4nQeTAhzqYsUsDR8JOca6sR+iAcg8QSrakqa6MR1Oz5iIHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E37irka3ASR0e0P6hO2AODC03Uu9R7rXSxtAsmGlTxI=;
 b=jv01gYTM+89YmJ4AFG1SaYeFis8mORDKyGKYddTPZmV1u95ibOYri0v3NTt6v5O6PeDznRJ9Jtvn50ojgQZLycodUau7fjOPzTvUmJt+HPakdadX05DsaTVnXox1KH/83HrmFntFGrkt8/MNySC2B32HVflb+Vw2ND9oBA88TSn22pbyJxMrs9qBmKoYERF43Np65WZWYlQm1zlV+ftxnDkoAOAJldWGN5MMC0c5968Gkrr8KuidPqWM0iHV7oLIAIn56rUcxue9tkBsIEWS63kA2QXi2tyCS4erLQd3TqkRFKnF62WfBYo46RRljNNgh5VX7QrcH2cVsNQuIiXVnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E37irka3ASR0e0P6hO2AODC03Uu9R7rXSxtAsmGlTxI=;
 b=QudSGv8fs/Fgh/OBlACZqoSh/vlAy/WSnI+UfYY6TMMRmkjxZLWRziNgi1B/eYrSYkcBWdjyL2T0QTxwcbPqL9vpgEbcX6gK/9wCCo9MAyCsEDlb/RzB8GtZJ4XEowfXG2psxV+4g08yzXj++1MwjXmks/ui2IP2caefsi8OILG1Ght4q5ozpGknZoFzlTEouvGrNl5C94xy6ij9Ou3dZgrgH4vFJdeIIA7tj9Bft2+c5eNOe3Y/YeM7+09i3DDroMrFdw6UXRenYcd/x/voOSWZ9uxS/rwfDFJFdkdbs8YVsvFp+4EFFUkfEun7KsPA7hFjHItqMyHd45U0FEhULw==
Received: from DU0P190MB2445.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:5a5::8) by
 DB9P190MB1290.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:22d::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.315.17; Tue, 18 Aug 2026 09:04:33 +0000
Received: from DU0P190MB2445.EURP190.PROD.OUTLOOK.COM
 ([fe80::5dcd:351e:4e91:2380]) by DU0P190MB2445.EURP190.PROD.OUTLOOK.COM
 ([fe80::5dcd:351e:4e91:2380%3]) with mapi id 15.21.0315.016; Tue, 18 Aug 2026
 09:04:18 +0000
From: Muhammed Subair <msubair@hotmail.com>
To: Maxime Ripard <mripard@kernel.org>, "'heiko@sntech.de'" <heiko@sntech.de>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Sebastian Reichel
	<sebastian.reichel@collabora.com>, "'hjc@rock-chips.com'"
	<hjc@rock-chips.com>, Alexey Charkov <alchark@flipper.net>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Thomas
 Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "'royalnet026@gmail.com'"
	<royalnet026@gmail.com>
Subject: RE: RK3576: rockchip-pm-domain fw_devlink device-link failures 
Thread-Topic: RK3576: rockchip-pm-domain fw_devlink device-link failures 
Thread-Index: AQHdLvCMNWbWHsFh9EaBFwHuViS45g==
Date: Tue, 18 Aug 2026 09:04:18 +0000
Message-ID: <DU0P190MB24453BCF26CFB4E7B391F609BCA62@DU0P190MB2445.EURP190.PROD.OUTLOOK.COM>
References: <33aa66b2-cd6d-416d-b1ef-20cc83e0ee10@hotmail.com>
 <DU0P190MB24456FE9DB02005BCDDEC336BCDA2@DU0P190MB2445.EURP190.PROD.OUTLOOK.COM>
In-Reply-To: <DU0P190MB24456FE9DB02005BCDDEC336BCDA2@DU0P190MB2445.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0P190MB2445:EE_|DB9P190MB1290:EE_
x-ms-office365-filtering-correlation-id: db16e965-e848-4f94-2da2-08defd07af56
x-microsoft-antispam: BCL:0;ARA:14566002|15080799012|51005399006|24021099003|31061999003|55001999006|13091999003|8060799015|19110799012|8062599012|37011999003|25031999004|25010399006|40105399003|2607281247196008|102099032|440099028|3412199025;
x-microsoft-antispam-message-info: =?utf-8?B?Y2xuR2RCTjRXODRyam8zNGtoNlpmSjh1dndJWUdMakhLV2s2TVZSMTBBbE1r?=
 =?utf-8?B?RnlVeGZzVERiclg4S2loL0FReENYQmdHclZrajQ0cTZmWTBvZnF3NFdYbmNR?=
 =?utf-8?B?ajlYd3AvQ1lEMGRHVUg4SnRtc25yRE1DTmpIM3VqZS9JRFFBbkVFTG9wS1B6?=
 =?utf-8?B?NG9HN2dmcGtFSjhQYmtjamptcVNLZDFtNFB1MlQ1MW9JVFVRNDBoZjRlTUI5?=
 =?utf-8?B?WG9NL2NWNEYzb2kzN0dVV0FmMTlqQmNyckRld0MwRURVTDdaVDA2WFM3RkRH?=
 =?utf-8?B?a2IwMWx0WGxkaU01TDg1andsS09ZNEdEcC9tUjRsS2R4TW1CNE5DVG5Vano1?=
 =?utf-8?B?TGZaK3c4TzJlY0RzL1Q0czc4MEE0UzhnZGVxeDVlTXBBSjVKK3gwK3FUZDk2?=
 =?utf-8?B?L0ErMXB1cjN4QzZrRGViTGZGN1l5aTBtaDl5YTUyaU5aTDdubDRTcHRVQ3E2?=
 =?utf-8?B?L2pqdkhEM3YreUNyTjBKZEhCcGZsdUVNSE82SzRWM2Ztck5sYVZqN1QyeXln?=
 =?utf-8?B?VFNja2hFaEVaWk40Nll6QWZ0ZXN1RWF0eGsrd1JOMUZGL0NqVmNBTG9ZL01V?=
 =?utf-8?B?ZHdMWlhIODRxczJyUXQ0N0tPa3JIYk9sRXoxTVNBTk9ER1RoU0RFY0tZaU0x?=
 =?utf-8?B?bUpnYlFoUm1VQ293cHhOUDJFbkZGL2xzVHZsRko2MWg0Ni9jMkFHZ0VpWjNO?=
 =?utf-8?B?dUZWZWpjbnZkWmVvd2pwY0UxbnJ2eEZ2bVJNOVRNaldWalU0SHZwSld5UzIx?=
 =?utf-8?B?alA3U0pvQkYzVWFCTEs5Z2xOaE1NZlVFdFV3NVJEQjVBcTdReEs3aTFMWXU5?=
 =?utf-8?B?UE5GbWRNbFh5SElDWDU2K3BQQVExcys5eUc5QWNLOXZ3Z01COVM2a3NvWVU4?=
 =?utf-8?B?am5qWlRIbnI2VUUzU3BxeDhmYWx0d052SDM0Vm1OK2lYOENkUUhUc1VMZHRr?=
 =?utf-8?B?WVZaVWxHVHJJQTFiTXNwdUpDZTRROVVwUVNlZ1NRcVdWclM3dHFtTnk1QTBP?=
 =?utf-8?B?Z0NiWGhuOHJ0RFE5ckMycHRvWjNhVTlNWEdHWXkyaTFTVHlmbzhsSGZERG5y?=
 =?utf-8?B?c2hEUmFsbFdkZEErd29mL3Bva1N1dmxxM1BRbXZlbzFpaGxSMG5TUUlPU3Vl?=
 =?utf-8?B?QnBTcFZmcHNYcFhyeWZrSmRPQkNINHBrcTBwcjV6dmk4NTNjZHA1dkdJeE41?=
 =?utf-8?B?SmgvaUdnVGc2T0UwdjU5Qnd1TFJCZ0tuU1c1WTd2ZC8yVGpUQ004ZFVvQ1hk?=
 =?utf-8?B?ZGZkeHg5djBFTlJoaU5lWmphQTBubjg4eitaK2JReDFwOHBqRlZoQll2Y3hz?=
 =?utf-8?B?Qmd2QjNzeWlJS2V0TzBhcDJ0QXozME5WNE1CUXZySDdOVVhBczBubi9NV3Ru?=
 =?utf-8?B?dnB4amhUVzBYQmJXMVhLN2hOZEcvaGFaanAvWnQ3UE9QNERCdkl2MFVwWHFp?=
 =?utf-8?Q?V/f3znYL?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Umk3Qjk3VDJ5WWgvUnU2R2ZGSUhZY1BPSVV1Vi9iZVczKzd2Ri8xTCtsb2Q0?=
 =?utf-8?B?RXk1RERNbTZoSmhENWNoOFlvazIvcUVJNkZvVi9Ia2w3ckNlZ2xxRTY0Zmhy?=
 =?utf-8?B?emt1M2pLb0FUZng1bmQvV0FyTjJUaVIxVWFoQ3Z1NjBudXBHZVllWDBUelZW?=
 =?utf-8?B?N1gxNCswbFFjM0ZmTzA2QTZRRmRCQjFnNm1BUzhHaSt5NkNDL052UEtJNURi?=
 =?utf-8?B?Nmp6bEFGdVJnUnFqekhCSFlXdVcxUTdUdEg0Njh1ZTNKQ3pXRGRUQWN0WHFK?=
 =?utf-8?B?ZVZrWUN6cmZJR2t2RlBUVEt5TFBMbHNOblN6clo5ZzIvVFRyOUJZMlM1VVlM?=
 =?utf-8?B?MnN5WDRWekhoMUJPN2Y3KzhLd2prNXhuMXRBRlQ1Z3JXZWxsZm9YSEFyblEr?=
 =?utf-8?B?ZEVtc0xmZk1NV24rK2doQmhwNmFoUXZEc2t6U3JyR2pvVnVRdTQ4b1AxWVpR?=
 =?utf-8?B?SWhaVW1tNW41M2hTaEducG55eW5DM09nc2p6RkFRbVBKbDI4SXBGdDU0eFJZ?=
 =?utf-8?B?VlB5ZUNWMWZLdU1WT3VUU05LbmNMSXBUTGV6MG9pSzJraGUzQzgrTzNtdGJp?=
 =?utf-8?B?QkcwNnZrbHFOc1phNEkraTBOUk5YQ2t3ZUNudzIzaUlVWVZ4VHdFSHMxaCtw?=
 =?utf-8?B?SHpoc0tOUnJuUHVmUm9WSVVSU094dDRVaXErYXJRUVpvbkZRbXpmdmdWWmxu?=
 =?utf-8?B?Z0J1dCtkdWRsczRyaVpQdy9GeDVYbEIra0QyU2lrOS82bmZrbThRTjcvSnBk?=
 =?utf-8?B?V2I1TkpqMGtCUjA2UG9lV2tGbVF5aVNVSDVFT2RlMWF6aFE3VFdNT3UvWmpQ?=
 =?utf-8?B?bVNQcWZtSlJxV29tZEVVUGdsWjVmZzlIc1V3SUFaU3BPSkZmR1pCUEdTdEhv?=
 =?utf-8?B?R2hENkZLdXpqOEZBU1B1QjRhcFkxTThlcFdncklJc3V3aHErZ3FHTzNnRE9L?=
 =?utf-8?B?VDFPZURIaEZId0lvaDl5WUpxMmhUbjh5VHJIZFNIVzk4Z09xWXhZdlpPUGxr?=
 =?utf-8?B?YVBvTWxRNThkVHFtMm00L0NFZTltTDJnSFJrSnRLeFZPOFF0S3cyaUE2QnRq?=
 =?utf-8?B?NE1UdVgzdG8wWUFaMHhYZHQya1phcWsybU1LKzVTR3hKb1d6dldrbDROeENw?=
 =?utf-8?B?WmpYdUE5SXdxcFF4MHQvOWJYNkswRkEwMFM1Y0tUOGU0eWhLbkV2cUdGdFVh?=
 =?utf-8?B?Tmo4Tm5FbFl1c01OdFVLZHFEUEVTSEJmVkdmOWFWYm5LdGpHT0c3QUkxUzBW?=
 =?utf-8?B?eHNPYVBhT0czRU92ZjYvcWlNVmZhZ09FUDhFUjF4Ylp5dWNZR2VzYy9GK1dH?=
 =?utf-8?B?QUVBYmVOVnh5NTRGRDVSOUdHN25KMkd3c0RtMDNyZDBmdnZ6NHh2QlZVdXo2?=
 =?utf-8?B?Mkk4WUo4c3NvN3JCY3h3a2Y2ZGg4SXpsS0YrS3gyUDdHZkVyM05IbHczWDgw?=
 =?utf-8?B?TkV3dGp1WmFnQ1A2OHpZeElDdHZUNWkzNThSY0p0SGtkYWZQT2d0RmJJckpU?=
 =?utf-8?B?MnA5MmRkSUtHR0RaZjF6a2o3WXpHUkorbGpFNGtXd2ZRekVmYjkydzM1MTdN?=
 =?utf-8?B?N2tkajdHOC8wc1JuK3RVWWdhS016bDJqaWEwMytZRzhsUWRuSkJhR0dkY0li?=
 =?utf-8?B?anpSN3FqbzBsYWZsZjV0S2d0TlNPRWw4Zm5YdVNwWXlCOWo1Y1htRUpVdlJz?=
 =?utf-8?B?YXp6Vm1FaWdRdWlVUVpsSEMzVEluMFJZZzdsbGIzVkdSRWhDNGV3d2k4bzB6?=
 =?utf-8?B?cGI0NXA3WEFIZXZYaTBFZjNJL0d2eDdtbDdibDdKSEFjS1BnWHlFdHRJZG1z?=
 =?utf-8?Q?PXVQxTrGuDIx8+nrg+FH38YdAXLuk9nX8VCgc=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-9412-3-msonline-outlook-b33f1.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0P190MB2445.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: db16e965-e848-4f94-2da2-08defd07af56
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2026 09:04:18.0545
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P190MB1290
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_020438_492043_9D11F26D 
X-CRM114-Status: GOOD (  11.78  )
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


Hi Rockchip/kernel folks, 

I am bringing up an RK3576 board on a 7.1.x based kernel and I see the following early boot errors from

fw_devlink/device-links: [ 0.260388] rockchip-pm-domain
27380000.power-management:power-controller: Failed to create device link
(0x180) with supplier soc for
/soc/power-management@27380000/power-controller/power-domain@0/power-domain@1
[ 0.262168] rockchip-pm-domain
27380000.power-management:power-controller: Failed to create device link
(0x180) with supplier soc for
/soc/power-management@27380000/power-controller/power-domain@0/power-domain@1/power-domain@2
... [ 0.285927] rockchip-pm-domain
27380000.power-management:power-controller: Failed to create device link
(0x180) with supplier soc for
/soc/power-management@27380000/power-controller/power-domain@18/power-domain@17

The board otherwise boots and the affected domains appear functional. 
PCIe/NVMe, HDMI, Ethernet, etc. are working. The RK3576 power-controller node has nested power-domain children. 
These child domain nodes contain properties such as `clocks` and `pm_qos`, similar to RK3588/RK3568, and `#power-domain-cells` is present as required by `rockchip,power-controller.yaml`. 
My current understanding is that the Rockchip PM domain driver consumes these child nodes internally and registers the provider from the top-level `power-controller` via `of_genpd_add_provider_onecell()`.
However, fw_devlink recurses into the child fwnodes and tries to create proxy supplier links for dependencies such as `clocks`. 
Since the child power-domain nodes are not normal devices, this ends up as failed links from `rockchip-pm-domain` to supplier `soc`. 
Is this expected noise for nested Rockchip power-domain nodes, or is RK3576 missing a DT/driver annotation to prevent fw_devlink from trying to create device links for these internal child nodes? 
I compared with RK3588/RK3568 and did not find an obvious missing property in RK3576. I also do not want to use `fw_devlink=off`, since that hides the issue globally. Could you advise whether the right fix should be: 

1. a DT change for RK3576 power-domain nodes, 
2. a Rockchip PM-domain driver change to mark child fwnodes as internal/not devices for fw_devlink, or 
3. an OF/fw_devlink change to avoid creating proxy links from generic power-domain child nodes? 


Thanks, 

Subair

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
